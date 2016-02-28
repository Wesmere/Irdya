unit_type
    id:"Poacher"
    name: _ "Poacher"
    race:"human"
    hitpoints:32
    movement_type:"smallfoot"
    movement:5
    experience:29
    level:1
    alignment:"chaotic"
    advances_to:"Trapper"
    cost:14
    usage:"archer"
    description: _ "Though not trained as warriors, the skills possessed by a hunter (especially those of archery) are useful in battle. Any group of soldiers or bandits traveling through the wild will need a few poachers in their employ, not merely for hunting but for lending a hand in any serious fight.

Because of their experience, these hunters are unusually capable at night, and in forests and swamps."
    --Poachers are better than normal units at woods and swamps
    movement_costs:
        swamp_water:2
    defense:
        forest:40
        swamp_water:50
    attack:
        name:"dagger"
        description: _ "dagger"
        type:"blade"
        range:"melee"
        damage:3
        number:2
    attack:
        name:"bow"
        description: _ "bow"
        type:"pierce"
        range:"ranged"
        damage:4
        number:4
