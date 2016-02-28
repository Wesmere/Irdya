unit_type
    id:"Death Knight"
    name: _ "Death Knight"
    race:"undead"
    hitpoints:63
    movement_type:"undeadfoot"
    resistance:
        blade:60
        impact:120
        pierce:40
    movement:5
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
--ifdef ENABLE_DEATH_KNIGHT
    advance_from:
        unit:"Revenant"
        experience:85
--endif
    -- AMLA_DEFAULT
    cost:45
    usage:"fighter"
    description: _ "Tales are told of the mightiest warriors and generals, who, cursed with hate and stung by betrayal, have come back to this world as Death Knights. Wielding the same weapons as in life, they command the Undead in their quest for revenge." .. SPECIAL_NOTES .. SPECIAL_NOTES_LEADERSHIP .. SPECIAL_NOTES_SUBMERGE
    abilities:
        ABILITY_LEADERSHIP
        ABILITY_SUBMERGE
    attack:
        name:"battle axe"
        description:"_battle axe"
        type:"blade"
        range:"melee"
        damage:11
        number:4
    attack:
        name:"crossbow"
        description:"_crossbow"
        type:"pierce"
        range:"ranged"
        damage:6
        number:2

