wsl_action
    id: "message"
    description: [[The most commonly used interface action is [message], which displays a message to the user in a dialog box. It can also be used to take input from the user. [message] elements should be constructed so that it is either guaranteed that a certain unit is alive, or so that dialog flows smoothly even if the message isn't displayed.]]

    action: (cfg, wesnoth) ->

        helper = wesnoth.require "lua/helper.lua"
        utils = wesnoth.require "lua/wml-utils.lua"
        location_set = wesnoth.require "lua/location_set.lua"
        _ = wesnoth.textdomain "wesnoth"

        log = (msg, level) ->
            wesnoth.wml_actions.wml_message
                message: msg
                logger: level

        get_image = (cfg, speaker) ->
            image = cfg.image

            if speaker and image == nil
                image = speaker.__cfg.profile

            if image == "none" or image == nil
                return ""

            return image

        get_caption = (cfg, speaker) ->
            caption = cfg.caption

            unless caption and speaker ~= nil
                caption = speaker.name or speaker.type_name

            return caption

        get_speaker = (cfg) ->
            local speaker
            context = wesnoth.current.event_context

            if cfg.speaker == "narrator"
                speaker = "narrator"
            elseif cfg.speaker == "unit"
                speaker = wesnoth.get_unit(context.x1 or 0, context.y1 or 0)
            elseif cfg.speaker == "second_unit"
                speaker = wesnoth.get_unit(context.x2 or 0, context.y2 or 0)
            else
                speaker = wesnoth.get_units(cfg)[1]

            return speaker

        message_user_choice = (cfg, speaker, options, text_input) ->
            image = get_image(cfg, speaker)
            caption = get_caption(cfg, speaker)

            left_side = true
            -- If this doesn't work, might need tostring()
            if image\find("~RIGHT()")
                left_side = false
                -- The percent signs escape the parentheses for a literal match
                image = image\gsub("~RIGHT%(%)", "")

            msg_cfg =
                left_side: left_side
                title: caption
                message: cfg.message
                portrait: image

            if speaker ~= nil
                if cfg.male_message ~= nil and speaker.gender == "male"
                    msg_cfg.message = cfg.male_message
                elseif cfg.female_message ~= nil and speaker.gender == "female"
                    msg_cfg.message = cfg.female_message

            -- Parse input text, unless available all fields are empty
            if text_input
                input_max_size = tonumber(text_input.max_length) or 256
                if input_max_size > 1024 or input_max_size < 1
                    log("Invalid maximum size for input " .. input_max_size, "warning")
                    input_max_size = 256

                -- This roundabout method is because text_input starts out
                -- as an immutable userdata value
                text_input =
                    label: text_input.label or ""
                    text: text_input.text	 or ""
                    max_length: input_max_size

            return () ->
                option_chosen, ti_content = wesnoth.show_message_dialog(msg_cfg, options, text_input)

                if option_chosen == -2 -- Pressed Escape (only if no input)
                    wesnoth.skip_messages()

                result_cfg = {}

                if #options > 0
                    result_cfg.value = option_chosen

                if text_input ~= nil
                    result_cfg.text = ti_content

                return result_cfg

        show_if = helper.get_child(cfg, "show_if") or {}
        unless wesnoth.eval_conditional(show_if)
            log("[message] skipped because [show_if] did not pass", "debug")
            return

        -- Only the first text_input tag is considered
        local text_input
        for cfg in helper.child_range(cfg, "text_input")
            if text_input ~= nil
                log("Too many [text_input] tags, only one accepted", "warning")
                break
            text_input = cfg

        options, option_events = {}, {}
        for option in helper.child_range(cfg, "option")
            condition = helper.get_child(option, "show_if") or {}

            if wesnoth.eval_conditional(condition)
                if option.message and not option.image and not option.label
                    message = tostring(option.message)
                    if message\find("&") or message:find("=") or message\find("*") == 1
                        wesnoth.wml_actions.deprecated_message{message: '[option]message="&image=col1=col2" is deprecated, use new DescriptionWML instead (default, image, label, description)'}

                    -- Legacy format
                    table.insert(options, option.message)
                else
                    opt = helper.parsed(option)
                    if opt.message
                        unless opt.label
                            -- Support either message or description
                            opt.label = opt.message
                        else
                            log("[option] has both label= and message=, ignoring the latter", "warning")

                    table.insert(options, opt)

                table.insert(option_events, {})

                for cmd in helper.child_range(option, "command")
                    table.insert(option_events[#option_events], cmd)

        -- Check if there is any input to be made, unless the message may be skipped
        has_input = text_input ~= nil or #options > 0

        unless has_input and wesnoth.is_skipping_messages!
            -- No input to get and the user is not interested either
            log("Skipping [message] because user not interested", "debug")
            return

        sides_for = cfg.side_for
        if sides_for and not has_input
            show_for_side = false

            -- Sanity checks on side number and controller
            for side in utils.split(sides_for)
                side = tonumber(side)
                if side > 0 and side < #wesnoth.sides and wesnoth.sides[side].controller == "human"
                    show_for_side = true
                    break

            unless show_for_side
                -- Player isn't controlling side which should see the message
                log("Player isn't controlling side that should see [message]", "debug")
                return

        speaker = get_speaker(cfg)
        if not speaker
            -- No matching unit found, continue onto the next message
            log("No speaker found for [message]", "debug")
            return
        elseif speaker == "narrator"
            -- Narrator, so deselect units
            wesnoth.deselect_hex!
            -- The speaker is expected to be either nil or a unit later
            speaker = nil
        else
            -- Check ~= false, because the default if omitted should be true
            if cfg.scroll ~= false
                wesnoth.scroll_to_tile(speaker.x, speaker.y)

            wesnoth.select_hex(speaker.x, speaker.y, false)

        if cfg.sound then wesnoth.play_sound(cfg.sound)

        msg_dlg = message_user_choice(cfg, speaker, options, text_input)

        local option_chosen
        unless has_input
            -- Always show the dialog if it has no input, whether we are replaying or not
            msg_dlg()
        else
            wait_description = cfg.wait_description or _("input")
            if type(sides_for) ~= "number"
                -- 0 means currently playing side.
                sides_for = 0
            choice = wesnoth.synchronize_choice(wait_description, msg_dlg, sides_for)

            option_chosen = tonumber(choice.value)

            if text_input ~= nil
                -- Implement the consequences of the choice
                wesnoth.set_variable(text_input.variable or "input", choice.text)

        if #options > 0
            if option_chosen > #options
                log("invalid choice (" .. option_chosen .. ") was specified, choice 1 to " ..
                    #options .. " was expected", "debug")
                return

            for cmd in *option_events[option_chosen]
                action = utils.handle_event_commands(cmd, "plain")
                break if action ~= "none"

    scheme:
        filter:
            description: [[The unit whose profile and name are displayed. If no unit matching this filter is found, the message is not displayed (The unit has probably been killed).]]
            type: "Table"
            table: "SUF"
        speaker:
            description: [[an alternative to filter. You may specify as the value of the speaker attribute a unit id or any of the following special values:
-- narrator: the dialog box is displayed without a caption for the unit speaking or a unit image
-- unit: the primary unit for the event is speaking
-- second_unit: the secondary unit for the event is speaking]]
        message:
            description: [=[(translatable) the text to display to the right of the image. message is sometimes multiple lines; if it is, be sure to use the [[text]] quotes.]=]
-- male_message, female_message: (Version 1.13.2 and later only) (translatable) Used instead of message if the unit's gender matches. Never used if there is no unit (ie speaker=narrator).
-- wait_description: (Version 1.13.2 and later only) the description of this message displayed when other players in a mp game wait for one player doing input in a [message] (with [option]s or [text_input]).
        show_if:
            description: [[if present then this message will only be displayed if the conditional statement in this tag is passed (see ConditionalActionsWML)]]
        side_for:
            description: [[(default: all sides) comma-separated list of sides for who message is shown. This will not work with messages that take user input ([option]/[text_input]), which can only ever be shown to the current player. (Version 1.13.0 and later only) side_for= is now also accepted for messages with user input, it specifies on which side the message is shown (defaults to the currently playing side). For messages with input it does not accept a comma seperated list only a single number.]]
        image:
            description: [[(default: profile image of speaker) the image to display next to the message. Append ~RIGHT() if you want the image to appear on the right side.
(Version 1.13.0 and later only) none: display no image]]
            type: "String"
        caption:
            description: [[(default: name of speaker) the caption to display beside the image. Name to be displayed. Note: use a translation mark to avoid wmllint errors.]]
            type: "tString"
        scroll:
            description: [[Boolean specifying whether the game view should scroll to the speaking unit. Defaults to yes.]]
            default: true
            type: "Bool"
        duration:
            description: [[(default: 10) the minimum number of frames for this message to be displayed. (A frame lasts about 30 milliseconds.) During this time any dialog decisions will be disregarded.]]
            default: 10
            type: "Signed"
        sound:
            is_list: true
            description: "a sound effect (wav file) to play as the message is displayed. This can be a comma-separated list, from which one will be randomly chosen."
        option:
            is_list: true
            description: [[No [option] elements have to be used. If [option] elements are present, then each option will be displayed in a menu for the user to select one option. Note: Messages with options will not be shown at all in prestart events]]
            type: "Table"
            scheme:
                message:
                    description: [[(translatable) the text displayed for the option (see DescriptionWML) (Version 1.13.2 and later only) This is now a synonym for label=.]]
-- image, label, description, default: See DescriptionWML.
                show_if:
                    description: [[if present then this option will only be displayed if the conditional statement in this tag is passed (see ConditionalActionsWML)]]
                command:
                    description: [[a function containing actions which are executed if the option is selected.]]
                text_input:
                    description: [[there can be only one [text_input] tag. this adds a text input field to the message. Note: Messages with text_input will not be shown at all in prestart events]]
                variable:
                    description: [[the variable that the user's input will be written to]]
                label:
                    description: [[a text label to the left of the input field]]
                max_length:
                    description: [[the maximum number of characters that may be typed into the field]]
                text:
                    description: [[text that is written into the field in the beginning]]
-- Check EventWML#Multiplayer_safety to find out in which events you can safely use [option] and [text_input] without causing OOS.
