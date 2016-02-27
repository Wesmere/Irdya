unit_type
    id:"Dwarvish Dragonguard"
    name: _ "Dwarvish Dragonguard"
    -- wmllint:" general spelling dragonguard dragonguards thunderstick thundersticks"
    race:"dwarf"
    hitpoints:59
    movement_type:"dwarvishfoot"
    movement:4
    experience:150
    level:3
    alignment:"neutral"
    advances_to:"null"
    -- AMLA_DEFAULT
    cost:46
    usage:"archer"
    description: _ "It is not clear why the Dragonguards are called what they are, a name given by their dwarven brethren. Some speculate that the name comes from their weapon of choice, these strange staves that belch fire and death. Others have surmised that it is because such weapons would be a threat against even a true Dragon, should such a thing be seen again in the known world. Whatever the case, it is for these weapons that the guardians of the great Dwarven citadels are both renowned and feared; weapons that have broken the mightiest of warriors with a single blow."
    attack:
        name:"dagger"
        description: _ "dagger"
        type:"blade"
        range:"melee"
        damage:9
        number:3
    attack:
        name:"dragonstaff"
        description: _ "dragonstaff"	-- wmllint: no spellcheck (until name->id)
        type:"pierce"
        range:"ranged"
        damage:40
        number:1
