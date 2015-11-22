
wsl_action
    id: "objectives"

    description: [[The other tag used for plot development is [objectives]. The [objectives] tag overwrites any previously set objectives, and displays text which should describe the objectives of the scenario. Scenario objectives are displayed on the player's first turn after the tag is used, or as part of the event if it triggers during that player's turn. Objectives can also be accessed at any time in a scenario using the "Scenario Objectives" game menu option, making this tag useful for scenario-specific information that the player may need to refer to during play.]]

    action: (cfg, kernel) ->
        return nil

--Attributes of [objectives]:

-- side: Default '0'. The side to set the objectives for. A value of 0 sets objectives for all sides. note: There are side-specific objectives and default objectives, which are used in case a side doesn't have specific ones. Specifying 0 sets the default ones.
-- StandardSideFilter tags and keys: Sets the objectives of all matching sides to these passed specifications (the rest of this [objectives] tag). If no sides (such as when passing side=0) or all sides match, sets the default objectives, and the side specific ones for the matching sides otherwise.
-- bullet: Default '• '. Replaces the default bullet, with whatever is passed, for all objectives, gold carryover notes, and notes defined with [note].
-- summary: Displayed first in the objectives text, this should describe the basic objective for the overall scenario. Can be omitted.
-- note: Displayed last in the objectives text, this is sometimes used for hints or additional information. Can be omitted.
-- victory_string: Default ' _ "Victory:"', this text precedes the victory objectives.
-- defeat_string: Default ' _ "Defeat:"', this text precedes the defeat objectives.
-- gold_carryover_string: Default ' _ "Gold carryover:"', this text precedes the gold carryover information.
-- notes_string: Default ' _ "Notes:"', this text precedes the notes.
-- silent: Default: not present. If set to "yes", the objectives are silently changed. Else, they will be shown to the user when appropriate.
-- Tags of [objectives]:
-- [objective]: describes a win or loss condition. Most scenarios have multiple win or loss conditions, so use a separate [objective] subtag for each line; this helps with translations.
-- bullet: Default '• ' or whatever is set in the parent [objectives] block. Replaces the default bullet, with whatever is provided, for the objective defined by the [objective] block.
-- red: Default '0' for winning objectives, '255' for losing objectives. Overrides the default red coloring of the entire objective, including the bullet.
-- green: Default '255' for winning objectives, '0' for losing objectives. Overrides the default green coloring of the entire objective, including the bullet.
-- blue: Default '0'. Overrides the default blue coloring of the entire objective, including the bullet.
-- description: text for the specific win or loss condition.
-- condition: The color and placement of the text. Values are 'win'(colored green, placed after victory_string) and 'lose'(colored red, placed after defeat_string)
-- show_turn_counter: If set to yes, displays the number of turns remaining in the scenario. Default is no.
-- [show_if]: A condition that disables the objective if it doesn't hold. Conditional objectives are refreshed at [show_objectives] time only.
-- [gold_carryover]: describes how the gold carryover works in this scenario. This is intended to be a more convenient way of displaying carryover information than using the note= key in [objectives].
-- bullet: Default '• ' or whatever is set in the parent [objectives] block. Replaces the default bullet with whatever is provided.
-- red: Default '255'. Overrides the default red coloring of the entire objective, including the bullet.
-- green: Default '255'. Overrides the default green coloring of the entire objective, including the bullet.
-- blue: Default '192'. Overrides the default blue coloring of the entire objective, including the bullet.
-- bonus (boolean): whether an early finish bonus is granted. If omitted, early finish bonus is not mentioned.
-- carryover_percentage: the amount of carryover gold. If omitted, the amount is not mentioned.
-- [note]: describes a note, usually used for hints or additional information. This is an easier way of adding several notes than concatenating them together into a single string to use with the note= key.
-- bullet: Default '• ' or whatever is set in the parent [objectives] block. Replaces the default bullet with whatever is provided for the note defined by the [note] block.
-- red: Default '255'. Overrides the default red coloring of the entire note, including the bullet.
-- green: Default '255'. Overrides the default green coloring of the entire note, including the bullet.
-- blue: Default '255'. Overrides the default blue coloring of the entire note, including the bullet.
-- description: the text of the note.
-- [show_if]: The note will not be shown if the specified condition isn't met. Conditional notes are refreshed at [show_objectives] time only.

