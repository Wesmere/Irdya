unit_type
    id: "Aragwaith Flagbearer"
    name: _"Flagbearer"
    race: "aragwaith"
    hitpoints: 45
    abilities:
        ABILITY_LEADERSHIP_LEVEL_2
    resistance:
        blade: 90
    movement_type: "aragwaithfoot"
    movement: 5
    experience: 100
    level: 2
    alignment: "neutral"
    advances_to: "Aragwaith Captain"
    cost: 40
    usage: "fighter"
--    description= _ "Flagbearers are the leaders on the battlefield. They wield large banners to lead and inspire the soldiers. They are also skilled with the glaive, which makes them dangerous in combat too."+{SPECIAL_NOTES}+{SPECIAL_NOTES_LEADERSHIP}
    description: _"Some Aragwaithi spearmen, having proven their worth in combat, are given the task of carrying the battle standards. These flagbearers carry glaives and wear heavier armour and serve as leaders of their fellow men. They believe that the battle flags should never be taken by the enemy." .. SPECIAL_NOTES .. SPECIAL_NOTES_LEADERSHIP

    attack:
        name: "glaive-stab"
        description: _"glaive"
        type: "pierce"
        range: "melee"
        damage: 13
        number: 2

    attack:
        name: "glaive-slash"
        description: _"glaive"
        type: "blade"
        range: "melee"
        damage: 7
        number: 4
