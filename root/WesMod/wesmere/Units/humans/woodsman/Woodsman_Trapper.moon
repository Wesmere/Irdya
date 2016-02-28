unit_type
    id:"Trapper"
    name: _ "Trapper"
    race:"human"
    hitpoints:45
    movement_type:"smallfoot"
    movement:5
    level:2
    alignment:"chaotic"
    experience:65
    advances_to:{"Huntsman", "Ranger"}
    cost:27
    usage:"archer"
    description: _ "Master woodsmen are useful allies to any army, and indispensable for any sizable group of people living in the wilderness. They can track both man and beast, notice things most others would overlook, and are often the only ones who can find food for the table, be it animal or vegetable.

Their skill at hunting is very useful in combat, and also leaves them unusually competent at night, and in forests and swamps."
    --Trappers are better than normal units at woods and swamps
    movement_costs:
        swamp_water:2
    defense:
        forest:40
        swamp_water:50
    attack:
        name:"dagger"
        description:"_dagger"
        type:"blade"
        range:"melee"
        damage:4
        number:4
    attack:
        name:"bow"
        description:"_bow"
        type:"pierce"
        range:"ranged"
        damage:6
        number:4
