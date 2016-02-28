unit_type
    id:"Troll Shaman"
    name: _ "Troll Shaman"
    race:"troll"
    abilities:
        ABILITY_REGENERATES
    hitpoints:50
    movement_type:"largefoot"
    resistance:
        pierce:90
    movement:5
    experience:100
    level:2
    alignment:"chaotic"
    advances_to:nil
--ifdef ENABLE_TROLL_SHAMAN
    advance_from:
        unit:"Troll Whelp"
--endif
    -- AMLA_DEFAULT
    cost:32
    usage:"mixed fighter"
    description: _ "Troll shamans are the mystical leaders of the trolls. Though not as strong or tough as other trolls, their true power lies in their fire magic, which they use to blast enemies with gouts of flame." .. SPECIAL_NOTES .. SPECIAL_NOTES_REGENERATES .. SPECIAL_NOTES_MAGICAL
    --melee attack should be worse than troll rocklobber,
    --since shaman has suck a better ranged attack
    attack:
        name:"fist"
        description:" _fist"
        type:"impact"
        range:"melee"
        damage:7
        number:2
    --with underground bonus, troll actually gets 10-3 attack
    attack:
        name:"flame blast"
        description:" _flame blast"
        type:"fire"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"ranged"
        damage:7
        number:3
