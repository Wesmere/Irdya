unit_type
    id:"Red Mage"
    name: _ "Red Mage"
    race:"human"
    gender:{"male","female"}
    hitpoints:42
    movement_type:"smallfoot"
    movement:5
    experience:100
    level:2
    alignment:"neutral"
    advances_to:{"Arch Mage","Silver Mage"}
    cost:40
    usage:"mixed fighter"
    description: _ "Upon the successful culmination of their apprenticeship, a mage is stripped of the brown robes of an apprentice and given the ruddy cloak of a master. The significance of this change is often lost on the peasantry, who mistakenly title Master Magi as ‘Red Magi’. Likewise, the symbolism of the change in colors is often mistaken to signify the mage’s ability to seemingly conjure fire from nothing but thin air, a trick which, although undeniably useful, is viewed by the magi themselves as a crass application of their hard-won knowledge.

Though physically frail, and untrained as warriors, the ‘Red Magi’ have a number of tricks up their sleeves, including the gouts of fire which may have cemented their colloquial name." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL
    resistance:
        fire:90
    attack:
        name:"staff"
        description:"_staff"
        type:"impact"
        range:"melee"
        damage:6
        number:2
    attack:
        name:"fireball"
        description: _ "fireball"
        type:"fire"
        range:"ranged"
        specials:WEAPON_SPECIAL_MAGICAL
        damage:8
        number:4
    female:
        name: _ "female^Red Mage"
        gender:"female"
