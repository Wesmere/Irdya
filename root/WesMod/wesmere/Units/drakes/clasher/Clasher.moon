unit_type
    id:"Drake Clasher"
    name: _ "Drake Clasher"
    race:"drake"
    hitpoints:43
    movement_type:"drakefoot"
    movement:5
    experience:45
    level:1
    alignment:"lawful"
    advances_to:{"Drake Thrasher","Drake Arbiter"}
    cost:19
    usage:"fighter"
    --wmllint:" general spellings clasher Clasher clashers Clashers"
    description: _ [[The Clashers are members of a unique caste among the drakes. Their thick armor, while compensating for the drakes’ natural weakness against spears and arrows, is so heavy and restricting that they are not able to fly or muster enough breath to use their inner fire. They have embraced this handicap, completely encasing their wings to emphasize that they do not need flight to triumph in battle.

This is also the only caste that is allowed to break taboo and fight with spears in addition to the drake’s traditional metal claws, which makes them particularly good at resolving territorial disputes with other drakes and enforcing the laws of their tribe.]] .. SPECIAL_NOTES .. SPECIAL_NOTES_FIRSTSTRIKE
    attack:
        name:"war talon"
        description: _ "war talon"
        type:"blade"
        range:"melee"
        damage:5
        number:4
    attack:
        name:"spear"
        description: _ "spear"
        type:"pierce"
        range:"melee"
        damage:6
        number:4
        specials:WEAPON_SPECIAL_FIRSTSTRIKE
