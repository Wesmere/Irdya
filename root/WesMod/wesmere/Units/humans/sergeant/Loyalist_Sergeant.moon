unit_type
    id:"Sergeant"
    name: _ "Sergeant"
    race:"human"
    hitpoints:32
    movement_type:"smallfoot"
    movement:6
    experience:32
    level:1
    alignment:"lawful"
    advances_to:"Lieutenant"
    cost:19
    usage:"fighter"
    description: _ "The Sergeant is a low-ranking officer in the ranks of an army. Though academically trained, he will need some experience in the field before his leadership is sound and acknowledged." .. SPECIAL_NOTES .. SPECIAL_NOTES_LEADERSHIP
    abilities:
        ABILITY_LEADERSHIP
    attack:
        name:"sword"
        description: _ "sword"
        type:"blade"
        range:"melee"
        damage:5
        number:3
    attack:
        name:"crossbow"
        description: _ "crossbow"
        type:"pierce"
        range:"ranged"
        damage:4
        number:3
