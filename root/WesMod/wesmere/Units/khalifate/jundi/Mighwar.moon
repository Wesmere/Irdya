unit_type
    id:"Mighwar"
    name: _ "Mighwar"
    race:"khalifate"
    hitpoints:58
    movement_type:"khalifatefoot"
    movement:6
    experience:150
    level:3
    alignment:"liminal"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:65
    usage:"mixed fighter"
    abilities:
        ABILITY_SKIRMISHER
    description: _ "Mighwar hold themselves to a higher standard than the ranks of the Monawish from which they ascended. Not content to merely draw the enemy out, they combine their speed with an aggression that sends the Mighwar dancing through the ranks of the enemy, swords ripping and tearing at those around them. " .. SPECIAL_NOTES .. SPECIAL_NOTES_SKIRMISHER
    attack:
        name:"long sword"
        description: _ "long sword"
        type:"blade"
        range:"melee"
        damage:10
        number:5

