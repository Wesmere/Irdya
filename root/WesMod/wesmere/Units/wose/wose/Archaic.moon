unit_type
    id: "Archaic Wose"
    name: _"Archaic Wose"
    race: "wose"
    hitpoints: 100
    movement_type: "treefolk"
    movement: 4
    experience: 200
    advancefrom: if ENABLE_ARCHAIC_WOSE then {
        unit: "Ancient Wose"
        experience: 175
    }
    level: 4
    alignment: "lawful"
    advances_to: "null"
    -- AMLA_DEFAULT
    cost: 62
    description: _[[There is a curious story of a farmer who had a great oak in his lawn, a tree which had stood when his father first broke the soil on that land, and under which his family had many memories. It was thus a shock to him, one morning, when he awoke to find it somehow spirited away, with nothing but a bare patch of earth where it once stood.
Such encounters are all that is known of what are presumably the most archaic of woses.]] .. SPECIAL_NOTES .. SPECIAL_NOTES_AMBUSH .. SPECIAL_NOTES_REGENERATES
    usage: "fighter"
    abilities: {
        ABILITY_AMBUSH
        ABILITY_REGENERATES
    }

    attack:
        name: "crush"
        description: _"crush"
        type: "impact"
        range: "melee"
        damage: 31
        number: 2
