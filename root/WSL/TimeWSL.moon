wsl_table
    id: "TimeWSL"
    description: [[The time of day influences damage done by lawful and chaotic units; this makes timing of your attack important. Graphically time of day is represented by a picture (landscape with sun or moon) in the status table, and by darkening the screen during night turns.
Scenario author can schedule the times of day in scenario; use the pre-defined time macros, or create new times of day.
The [time] tag

The [time] tag is a subtag of the [scenario] tag. However, most scenarios do not use these directly, but usually use the ready macros {DAWN}, {MORNING}, {AFTERNOON}, {DUSK}, {FIRST_WATCH}, {SECOND_WATCH} and {UNDERGROUND} to specify the day-night cycle. See data/core/macros/schedules.cfg for the definitions of these IDs.
The [time] tag describes a single turn of a day/night sequence. When a scenario is played, the first turn is described by the first [time] tag; the second described by the second, until there are no more. After all the tags have described a turn, the next turn is described by the first tag again.

Scheduling time
The [scenario] tag contains a few [time] tags (or macros). These time tags are used in a loop, that is: first time tag is used during the first turn, then second one,... and when all time tags passed then again the first one, second one, etc.
The typical day/night cycle looks like this:
{DAWN}
{MORNING}
{AFTERNOON}
{DUSK}
{FIRST_WATCH}
{SECOND_WATCH}
To avoid day/night cycle, use a neutral time of day, for example:
{DAWN}
In underground, use a special time of day. It works like night; that is it gives advantage to chaotic units and disadvantage to lawful units.
{UNDERGROUND}
See Also

ScenarioWSL
ReferenceWSL]]

    scheme:
        id:
            description: [[the id by which you can reference this time, e.g. in the time_of_day tag of AiWSL.]]
        name:
            description: [[(translatable) the name displayed when the cursor is over the day/night image.]]
        image:
            description: [[the image displayed at the top of the Status Table during turns of this type.]]
        mask:
            description: [[the image displayed over all hexes during turns of this type.]]
        lawful_bonus:
            description: [[units with alignment=lawful do +lawful_bonus % damage during turns of this type. Units with alignment=chaotic do -lawful_bonus % damage. Units with alignment=neutral are unaffected by this key. Units with alignment=liminal do -(abs(lawful_bonus)) % damage. lawful_bonus can be a negative number. This is useful if you want to give Chaotic units an advantage instead of Lawful ones.]]
        red_green_blue:
            description: [[red, green, blue: describe the tint of the screen during the time period. Appears to be an integer value from -255 to 255. See schedules.cfg for examples.]]
        sound:
            description: [[a sound to play (in sounds/) when changing into this time of day.]]
