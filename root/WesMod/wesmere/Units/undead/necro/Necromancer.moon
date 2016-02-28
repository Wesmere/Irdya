unit_type
    id:"Necromancer"
    name: _ "Necromancer"
    gender:{"male","female"}
    race:"human"
    hitpoints:70
    movement_type:"smallfoot"
    movement:5
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:50
    usage:"mixed fighter"
    description: _ "One of the pinnacles of what is considered ‘black magic’ is the art of necromancy, the terrible ability to awaken the dead with false life. This discovery alone caused humanity’s condemnation of black magic, for the nightmarish things it has made real have given fear a vast new arsenal.

This ability, in all aspects, is the first step towards cheating death of its ultimate prize." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_PLAGUE .. SPECIAL_NOTES_ARCANE
    attack:
        name:"plague staff"
        description:"_plague staff"
        type:"impact"
        range:"melee"
        damage:6
        number:3
        specials:
            WEAPON_SPECIAL_PLAGUE
    attack:
        name:"chill wave"
        description:"_chill wave"
        type:"cold"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"ranged"
        damage:17
        number:2
    attack:
        name:"shadow wave"
        description:"_shadow wave"
        type:"arcane"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"ranged"
        damage:12
        number:2
    female:
        name: _ "female^Necromancer"
        gender:"female"
