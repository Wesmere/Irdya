unit_type
    id:"Pikeman"
    name: _ "Pikeman"
    race:"human"
    hitpoints:55
    movement_type:"smallfoot"
    movement:5
    experience:65
    level:2
    alignment:"lawful"
    advances_to:"Halberdier"
    cost:25
    usage:"fighter"
    description: _ "Promising spearmen in the armies of Wesnoth are often graduated to wielding pikes, and are outfitted with something far superior to the motley collection of leather armor they wore as recruits. A pike is a much longer weapon than a spear, and thus facilitates different combat tactics. A wall of pikemen is the bane of any cavalry charge, and with proper discipline and tactics, pikemen can also hold most other infantry at bay." .. SPECIAL_NOTES .. SPECIAL_NOTES_FIRSTSTRIKE
    resistance:
        pierce:60
    attack:
        name:"pike"
        description: _ "pike"
        type:"pierce"
        range:"melee"
        damage:10
        number:3
        specials:
            WEAPON_SPECIAL_FIRSTSTRIKE
