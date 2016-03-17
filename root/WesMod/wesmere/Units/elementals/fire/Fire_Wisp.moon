unit_type:
    id: "Fire Wisp"
    name: _"Fire Wisp"
    race: "elemental"
    TRAIT_RUBY
    TRAIT_RUBY
    TRAIT_EMERALD
    TRAIT_DIAMOND
    hitpoints: 53
    movement_type: "firefly"
    movement: 6
    experience: 75
    level: 2
    alignment: "neutral"
    advances_to: "Fire Ghost"
    cost: 34
    usage: "archer"
    die_sound: "drake-die.ogg"
    description: _"Fire Wisps are spirits of smoke and flame. When not being ordered around they like to frolic in pools of lava and take great delight in burning anything they can reach." .. SPECIAL_NOTES .. SPECIAL_NOTES_DESERT_HOME

    abilities:
        ABILITY_DESERTHOME

    attack:
        name: "fire bash"
        description: _"fire bash"
        type: "fire"
        range: "melee"
        damage: 9
        number: 2

    attack:
        name: "fire breath"
        description: _"fire breath"
        type: "fire"
        range: "ranged"
        damage: 7
        number: 4
