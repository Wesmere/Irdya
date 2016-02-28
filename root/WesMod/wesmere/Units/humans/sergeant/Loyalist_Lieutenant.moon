unit_type
    id:"Lieutenant"
    name: _ "Lieutenant"
    race:"human"
    hitpoints:40
    movement_type:"smallfoot"
    movement:6
    experience:80
    level:2
    alignment:"lawful"
    advances_to:"General"
    cost:35
    usage:"fighter"
    description: _ "Trained at swords and crossbows, Lieutenants lead small groups of human soldiers, coordinating their attacks." .. SPECIAL_NOTES .. SPECIAL_NOTES_LEADERSHIP
    abilities:
        ABILITY_LEADERSHIP
    attack:
        name:"sword"
        description: _ "sword"
        type:"blade"
        range:"melee"
        damage:8
        number:3
    attack:
        name:"crossbow"
        description: _ "crossbow"
        type:"pierce"
        range:"ranged"
        damage:5
        number:3

