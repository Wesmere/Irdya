race
    id: "aragwaith"
    male_name: _"race^Aragwaith"
    female_name: _"race+female^Aragwaith"
    plural_name: _"race^Aragwaithi"
    num_traits: 2
    markov_chain_size: 3
    --HUMAN_NAMES

    description: _[[During most of the Golden Age, the humans who inhabited the Great Continent were mostly Wesnothians, divided across various territories such as the Northlands, Elensefar and the kingdom of Wesnoth itself. However, there was once a time of great strife during which a new race of humans started to appear from nowhere. They were the 'Aragwaithi', which meant 'noble' in their native language.

It has been since then rumored that they came from the Vast Sea to settle in Wesnoth. They mostly lived as mercenaries in that time, until the Fall. After that, they supposedly moved to the northmost lands of the Continent, were the sands could not reach, and the green could survive.

Albeit being humans, many of their customs and racial features are incredibly different to the standards, to the point it puts them close to elves in terms of their dexterity with bows. Their wisemen have a mastery of magic not to be underestimated in the battlefield, for it has surprised and overseded the best magi often.]]

move_type
    id: "aragwaithfoot"
    movement_costs:
        deep_water: 99
        shallow_water: 3
        reef: 2
        swamp_water: 2
        flat: 1
        sand: 1
        forest: 2
        hills: 2
        mountains: 2
        village: 1
        castle: 1
        cave: 2
        frozen: 2
        unwalkable: 99
        impassable: 99
        fungus: 2
    defense:
        deep_water: 80
        shallow_water: 80
        reef: 70
        swamp_water: 70
        flat: 60
        sand: 50
        forest: 50
        hills: 50
        mountains: 40
        village: 40
        castle: 40
        cave: 50
        frozen: 60
        impassable: 10
        fungus: 50
    resistance:
        blade: 100
        pierce: 100
        impact: 100
        fire: 100
        cold: 100
        arcane: 80

move_type
    id: "aragwaithmounted"
    movement_costs:
        deep_water: 99
        shallow_water: 3
        reef: 2
        swamp_water: 2
        flat: 1
        sand: 1
        forest: 2
        hills: 2
        mountains: 3
        village: 1
        castle: 1
        cave: 3
        frozen: 2
        unwalkable: 99
        impassable: 99
        fungus: 3
    defense:
        deep_water: 80
        shallow_water: 80
        reef: 70
        swamp_water: 70
        flat: 60
        sand: 60
        forest: 70
        hills: 60
        mountains: 60
        village: 60
        castle: 60
        cave: 60
        frozen: 60
        impassable: 10
        fungus: 80
    resistance:
        blade: 80
        pierce: 120
        impact: 70
        fire: 100
        cold: 100
        arcane: 80
