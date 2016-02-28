unit_type
    id:"Saurian Oracle"
    name: _ "Saurian Oracle"
    race:"lizard"
    hitpoints:29
    movement_type:"lizard"
    movement:6
    experience:100
    level:2
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:27
    usage:"archer"
    description: _ "Certain saurians are seen dressed in arcane regalia and covered head to toe in horrifying, esoteric shapes and markings, both with paint and tattoo. Some suspect them to be visionaries, or oracles amongst their ilk. But whatever ‘societal’ function they may have, they are undeniably powerful in the strange magics their kind possess, and are beings to be wary of if ever seen." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_HEALS
    abilities:
        ABILITY_HEALS
    attack:
        name:"staff"
        description:"_staff"
        type:"impact"
        range:"melee"
        damage:4
        number:3
    attack:
        name:"curse"
        description:"_curse"
        type:"cold"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"ranged"
        damage:8
        number:3
