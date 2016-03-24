unit_type
    id: "Aragwaith Eagle Master"
    name: _"Eagle Master"
    race: "aragwaith"
    hitpoints: 45
    movement_type: "fly"
    movement: 9
    experience: 100
    level: 2
    alignment: "neutral"
    advances_to: "null"
--    AMLA_DEFAULT
    undead_variation: "gryphon"
    cost: 35
    usage: "scout"
    description: _"With experience, Eagle riders become more skilled and the relation with their winged friend become so strong that they act as one. As Eagle masters, they no longer need to give orders to their mounts, those anticipate them." .. SPECIAL_NOTES .. SPECIAL_NOTES_ATTACK_ONLY
    defense:
        mountains: 40

    attack:
        name: "claws"
        description: _"claws"
        type: "blade"
        range: "melee"
        damage: 10
        number: 3

    attack:
        name: "prey crush"
        description: _"prey crush"
        type: "impact"
        range: "melee"
        damage: 16
        number: 2
        specials:
            WEAPON_SPECIAL_ATTACK_ONLY
