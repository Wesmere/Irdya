unit_type
    id:"Drake Arbiter"
    name: _ "Drake Arbiter"
    race:"drake"
    hitpoints:62
    movement_type:"drakefoot"
    movement:5
    experience:105
    level:2
    alignment:"lawful"
    advances_to:"Drake Warden"
    cost:31
    usage:"fighter"
    description: _ "Arbiters take their caste duty of enforcing order very seriously. In order to better execute their duties, they have abandoned the drakes’ traditional hand-mounted claws and traded their spears for the spike and blade of the halberd. In their minds, the loss of maneuverability is a fair price for the raw heft the massive metal head provides. The thick plate these drakes wear protects them well against weapons that could slip between their scales." .. SPECIAL_NOTES .. SPECIAL_NOTES_FIRSTSTRIKE
    resistance:
        pierce:90
    attack:
        name:"halberd"
        description: _ "halberd"
        type:"blade"
        range:"melee"
        damage:11
        number:3
    attack:
        name:"halberd"
        description: _ "halberd"
        type:"pierce"
        range:"melee"
        specials:WEAPON_SPECIAL_FIRSTSTRIKE
        damage:17
        number:2
