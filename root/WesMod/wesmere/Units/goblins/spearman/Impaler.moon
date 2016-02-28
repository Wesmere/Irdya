unit_type
    id:"Goblin Impaler"
    name: _ "Goblin Impaler"
    race:"goblin"
    hitpoints:26
    movement_type:"orcishfoot"
    movement:5
    experience:50
    level:1
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:13
    usage:"fighter"
    description: _ "Goblins are used by the orcs as skirmishers to disrupt the enemy’s battle line. Those who manage to survive their first few battles equip themselves with a long spear to compensate for their short reach, and better armor to guard their diminutive frames." .. SPECIAL_NOTES .. SPECIAL_NOTES_FIRSTSTRIKE
    attack:
        name:"spear"
        description: _ "spear"
        type:"pierce"
        range:"melee"
        damage:8
        number:3
        specials:
            WEAPON_SPECIAL_FIRSTSTRIKE
    attack:
        name:"spear"
        description: _ "spear"
        type:"pierce"
        range:"ranged"
        damage:5
        number:1

