unit_type
    id:"Elvish Marshal"
    name: _ "Elvish Marshal"
    race:"elf"
    hitpoints:62
    movement_type:"woodland_less_nimble"
    movement:5
    experience:150
    level:3
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:55
    usage:"fighter"
    description: _ "The longevity and natural intelligence of elves make them apt for military matters, enough even to counter their general distaste for war. Elves remember things much more clearly than humankind, and can often intuit what others can only be trained to do. Certainly, on those rare occasions when an elf sets his mind to war, the strategy that results is often the work of a master." .. SPECIAL_NOTES .. SPECIAL_NOTES_LEADERSHIP
    abilities:
        ABILITY_LEADERSHIP
    attack:
        name:"sword"
        description:"_sword"
        type:"blade"
        range:"melee"
        damage:10
        number:4
    attack:
        name:"bow"
        description:"_bow"
        type:"pierce"
        range:"ranged"
        damage:8
        number:3
