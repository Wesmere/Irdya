
-- Warning:" If you are not a native and literate English speaker", do
-- not try to modify the storyline text.  It is deliberately written
-- in a somewhat archaic and poetic form of English, and some previous
-- attempts to "fix" it inflicted damage that was difficult to undo.

scenario
    id:"02_Assassins"
    name: _ "Assassins"
    map:"02_Assassins.map"
    turns:24
    next_scenario:"03_Wasteland"

    time:DEFAULT_SCHEDULE
    music:{"underground","battle","frantic"}

    story:
        part: AOI_BIGMAP
            music:"northerners"
            story: _ "The path of the orcish war band was easy to follow — a wide swathe of trampled ground through violated forest. Erlornas and his party swiftly followed it north and west."
        part: AOI_BIGMAP
            story: _ "Soon they arrived at a region where the forest was cut through by many streams, only to find something unexpected."
    story: AOI_TRACK JOURNEY_02_NEW

    side: FLAG_VARIANT "wood-elvish"
        side:1
        controller:"human"
        recruit:"Elvish Scout,Elvish Fighter,Elvish Archer,Elvish Shaman"
        type:"Elvish Lord"
        team_name:"good"
        user_team_name: _ "Elves"
        unit: CHARACTER_STATS_ERLORNAS
            facing:"nw"

    side: FLAG_VARIANT6 "ragged"
        side:2
        controller:"ai"
        recruit:"Orcish Assassin, Orcish Grunt, Wolf Rider"
        gold: QUANTITY 150, 200, 240
        income: QUANTITY 0, 0, 2
        team_name:"Orcs"
        user_team_name: _ "Orcs"
        unit:
            type:"Orcish Slayer"
            id:"Gharlsa"
            can_recruit:true
            name: _ "Gharlsa"
            facing:"se"
        ai:
            recruitment_ignore_bad_combat:true
            villages_per_scout:6
            aggression:0.5
            caution:0.25
            leader_value:3
            village_value:1
            scout_village_targeting:3
            goal:
                name:"protect_unit"
                criteria:
                    side:2
                    can_recruit:true
                protect_radius:20
                value:1
            grouping:"offensive"
            attack_depth:5

    Prestart: -> STARTING_VILLAGES 1, 6
    Prestart: -> STARTING_VILLAGES 2, 6 -- Gharlsa starts with all villages north of the northernmost river

    Prestart: ->

        objectives HINT( _ "Assassins are hard to hit, and their poison is insidious. Stay close to the villages, where poisoning can be cured, and force your enemies to attack you from the river.")
            objective:
                description: _ "Defeat Gharlsa"
                condition:"win"
            objective:
                description: _ "Death of Erlornas"
                condition:"lose"
            objective: TURNS_RUN_OUT

            gold_carryover:
                bonus:true
                carryover_percentage:40

        RECALL_ADVISOR!
        MODIFY_UNIT {side:1}, "facing", "nw"

    Start: ->
        message
            role:"advisor"
            message: _ "The trail leads straight to this place, my lord."

        message
            speaker:"Erlornas"
            message: _ "There is a keep ahead of us. How comes it that we know nothing of it? I thought our borders were watched more carefully."

        message
            role:"advisor"
            message: _ "I... I know not, my lord. For ages there was no one in these lands that could build such a thing save us. I fear we have fallen prey a false sense of security that has injured the vigilance of our scouts."

        message
            speaker:"Erlornas"
            message: _ "When the fighting ends, I’ll have some answers. But for now—"

        message
            speaker:"Gharlsa"
            message: _ "Gharlsa sees elves... yes... Fresh meat for wolves. Yes, yes..."

        message
            speaker:"Erlornas"
            message: _ "— let’s focus on the task at hand."

        message
            role:"advisor"
            message: _ "Does that demented creature truly believe he can kill us?"

        message
            speaker:"Erlornas"
            message: _ "Appearances can be deceiving. Tell the men to be cautious."


    Attack:
        filter:
            type:"Orcish Assassin"

        command: ->
            message
                speaker:"Gharlsa"
                message: _ "Yes... yes... Slay them!"

    LastBreath:
        filter:
            --- @todo this can't work. Should be a bug in wesnoth
            speaker:"Gharlsa"

        command: ->
            message
                speaker:"unit"
                message: _ "Hurts... failed... Rualsha gonna be angry..."

    Die:
        filter:
            id:"Gharlsa"

        command: ->
            message
                speaker:"Erlornas"
                message: _ "This... ‘Rualsha’ again. We need to forge ahead; the answers we seek are not here. Perhaps we will find them further north."

            message
                speaker:"Erlornas"
                message: _ "Destroy this place and let the forest take the ruins. We don’t want any more undesirables to use it."

            endlevel: NEW_GOLD_CARRYOVER 40
                result:"victory"
                bonus:true

    Prestart: HERODEATH_ERLORNAS
