unit_type
    id:"Elvish Captain"
    name: _ "Elvish Captain"
    race:"elf"
    hitpoints:47
    movement_type:"woodland_less_nimble"
    movement:5
    experience:90
    level:2
    alignment:"neutral"
    advances_to:"Elvish Marshal"
    cost:32
    usage:"fighter"
    description: _ "Elves, unlike many other races, will quickly acknowledge and follow any of their peers who have experience in combat. In this they differ greatly from humanity, for whom leadership is often a matter of coercion and intimidation. The combination of their willingness to accept the wisdom of their leaders, and the tendency to choose leaders of merit is one of the quiet strengths of the elves." .. SPECIAL_NOTES .. SPECIAL_NOTES_LEADERSHIP
    abilities: ABILITY_LEADERSHIP

    attack:
        id:"sword"
        name:"sword"
        description:_"sword"
        type:"blade"
        range:"melee"
        damage:7
        number:4

    attack:
        id:"bow"
        name:"bow"
        description:_"bow"
        type:"pierce"
        range:"ranged"
        damage:5
        number:3

