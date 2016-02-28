unit_type
    id:"Fencer"
    name: _ "Fencer"
    race:"human"
    hitpoints:28
    movement_type:"elusivefoot"
    movement:6
    experience:42
    level:1
    alignment:"lawful"
    advances_to:"Duelist"
    cost:16
    usage:"fighter"
    description: _ "Fencers belong to a school of thought that considers the armor most soldiers wear in combat to be their own worst enemy. While armor can only soften a blow, evading it leaves the defender completely unharmed. Being able to reliably dodge any offensive move is a luxury only afforded to the fit of body, and then only to those who endure rigorous training.

Outfitted with only a dagger and saber, fencers are light on their feet and useful in many situations where their armor-bound peers are at a disadvantage. They relish dancing circles around troops like heavy infantry, mocking the weight of their full armor." .. SPECIAL_NOTES .. SPECIAL_NOTES_SKIRMISHER
    resistance:
        cold:90
    abilities:
        ABILITY_SKIRMISHER
    attack:
        name:"saber"
        description: _ "saber"
        type:"blade"
        damage:4
        number:4
        range:"melee"
