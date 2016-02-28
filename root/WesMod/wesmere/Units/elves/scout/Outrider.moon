unit_type
    id:"Elvish Outrider"
    name: _ "Elvish Outrider"
    race:"elf"
    hitpoints:57
    movement_type:"woodland"
    movement:10
    experience:150
    level:3
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:43
    undead_variation:"mounted"
    usage:"scout"
    --they are weak against piercing attacks
    description: _ "Elvish Outriders are trained as the royal couriers of the elven kingdoms. Despite the peaceful nature of their people, their experience makes them quite deadly in combat. No human has ever come close to their skill in using a bow on horseback — in fact, most would be hard pressed to equal it standing on solid ground.

The speed of these soldiers allows the elves to strike when and where they choose when fighting on their home ground, a fact that has saved many of their number from death."
    defense:
        forest:40
    resistance:
        pierce:120
    attack:
        name:"sword"
        description:"_sword"
        type:"blade"
        range:"melee"
        damage:7
        number:4
    attack:
        name:"bow"
        description:"_bow"
        type:"pierce"
        range:"ranged"
        damage:8
        number:3
