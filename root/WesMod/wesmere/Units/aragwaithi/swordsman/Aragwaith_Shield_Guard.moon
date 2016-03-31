unit_type
    id: "Aragwaith Shield Guard"
    name: _"Shield Guard"
    race: "aragwaith"
    hitpoints: 66
    movement_type: "aragwaithfoot"
    abilities: {
        ABILITY_PROTECTION_LEVEL_3
        ABILITY_STEADFAST
    }
    resistance:
        pierce: 80
        impact: 90
        blade: 80
    movement: 4
    experience: 150
    level: 3
    alignment: "lawful"
    advances_to: "null"
--    AMLA_DEFAULT
    cost: 45
    usage: "fighter"
    description: _"These warriors wear the old shields of their ancients. These ancients could hold the line in the great battles until the reinforcements arrived, but they paid a high price, not many survived the battle and many others died through their strong wounds. Now only the best warriors are allowed to carry these ancient shields to remind the world and to honor these brave man and their sacrifice." .. SPECIAL_NOTES .. SPECIAL_NOTES_PROTECTION .. SPECIAL_NOTES_STEADFAST

    attack:
        name: "sword"
        description: _"sword"
        type: "blade"
        range: "melee"
        damage: 15
        number: 3

    variation:
        variation_name: "alternate"
        inherit: true
