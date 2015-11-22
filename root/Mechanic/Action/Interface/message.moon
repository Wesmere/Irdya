wsl_action
    id: "message"
    description: [[The most commonly used interface action is [message], which displays a message to the user in a dialog box. It can also be used to take input from the user. [message] elements should be constructed so that it is either guaranteed that a certain unit is alive, or so that dialog flows smoothly even if the message isn't displayed.]]

    action: (cfg, kernel) ->
        local speaking_unit
        if speaker = cfg.speaker
            switch speaker
                when "narrator"
                    speaking_unit = nil
                when "unit"
                    speaking_unit = unit
                when "second_unit"
                    speaking_unit = second_unit
                else
                    speaking_unit = kernel\get_unit({ id: speaker })

        unless speaking_unit
            if filter = cfg.filter
                speaking_unit = kernel\get_unit(filter)

        unless speaking_unit
            return

        kernel\print("some message for the player: " .. cfg.message)

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
