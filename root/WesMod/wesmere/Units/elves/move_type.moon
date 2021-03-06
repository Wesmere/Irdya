WOODLAND_RESISTANCE =
    blade: 100
    pierce: 100
    impact: 100
    fire: 100
    cold: 100
    arcane: 110

move_type
    id: "woodland"
    movement_costs:
        shallow_water: 3
        reef: 2
        swamp_water: 2
        flat: 1
        sand: 2
        forest: 1
        hills: 2
        mountains: 3
        village: 1
        castle: 1
        cave: 3
        frozen: 2
        fungus: 2
    defense:
        shallow_water: 80
        reef: 70
        swamp_water: 70
        flat: 60
        sand: 70
        forest: 30
        hills: 50
        mountains: 40
        village: 40
        castle: 40
        cave: 70
        frozen: 70
        fungus: 50
    resistance: WOODLAND_RESISTANCE

move_type
    id: "woodlandfloat"
    flies: true
    movement_costs:
        deep_water: 2
        shallow_water: 1
        reef: 1
        swamp_water: 1
        flat: 1
        sand: 1
        forest: 1
        hills: 1
        mountains: 2
        village: 1
        castle: 1
        cave: 2
        frozen: 1
        fungus: 2
    defense:
        deep_water: 70
        shallow_water: 60
        reef: 50
        swamp_water: 60
        flat: 50
        sand: 60
        forest: 30
        hills: 50
        mountains: 40
        village: 40
        castle: 40
        cave: 70
        frozen: 60
        fungus: 50
    resistance: WOODLAND_RESISTANCE
