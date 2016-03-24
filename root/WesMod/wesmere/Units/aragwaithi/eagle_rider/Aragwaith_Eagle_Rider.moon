unit_type
    id: "Aragwaith Eagle Rider"
    name: _"Eagle Rider"
    race: "aragwaith"
    hitpoints: 34
    movement_type: "fly"
    movement: 9
    experience: 36
    level: 1
    alignment: "neutral"
    advances_to: "Aragwaith Eagle Master"
    undead_variation: "mounted"
    cost: 23
    usage: "scout"
    description: _"Some Aragwaithi youths take young eagles as a pet. These are not the common eagles, but a race of noble, giant birds of prey. When they are grown enough, they usually willing to serve as a mount for their best friend, and their young mates learn the art of riding these giant birds." .. SPECIAL_NOTES .. SPECIAL_NOTES_ATTACK_ONLY

    attack:
        name: "claws"
        description: _"claws"
        type: "blade"
        range: "melee"
        damage: 6
        number: 3

    attack:
        name: "prey crush"
        description: _"prey crush"
        type: "impact"
        range: "melee"
        damage: 12
        number: 2
        specials:
            WEAPON_SPECIAL_ATTACK_ONLY
