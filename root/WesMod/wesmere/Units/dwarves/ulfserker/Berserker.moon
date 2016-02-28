unit_type
    id:"Dwarvish Berserker"
    name: _ "Dwarvish Berserker"
    race:"dwarf"
    hitpoints:48
    movement_type:"dwarvishfoot"
    movement:5
    experience:100
    level:2
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:33
    usage:"fighter"
    description: _ "Berserkers are a rare caste of Dwarves, who work themselves into a towering rage before combat. These warriors disdain all notion of defense, thinking only of the unrelenting assaults for which they are legendary." .. SPECIAL_NOTES .. SPECIAL_NOTES_BERSERK
    defense:
        hills:60
        mountains:50
        village:60
        cave:60
        castle:60
    attack:
        name:"berserker frenzy"
        description: _ "berserker frenzy"
        type:"blade"
        specials:
            WEAPON_SPECIAL_BERSERK
        range:"melee"
        damage:7
        number:4
