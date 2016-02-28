unit_type
    id:"Rasikh"
    name: _ "Rasikh"
    race:"khalifate"
    hitpoints:70
    movement_type:"khalifatearmoredfoot"
    movement:5
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:58
    usage:"fighter"
    description: _ "Spread across the Khalifate's lands are lonely towers and garrisons that provide shelter to caravans and locals from bandits and monsters. These bastions are defended by the most determined of soldiers, who have often faced off against overwhelming odds only to repel the invaders. In an army they can be trusted to hold any position or line, long after lesser soldiers and men have fled in terror." .. SPECIAL_NOTES .. SPECIAL_NOTES_FIRSTSTRIKE
    attack:
        name:"spear"
        description:"_spear"
        type:"pierce"
        range:"melee"
        damage:15
        number:3
        specials:
            WEAPON_SPECIAL_FIRSTSTRIKE

