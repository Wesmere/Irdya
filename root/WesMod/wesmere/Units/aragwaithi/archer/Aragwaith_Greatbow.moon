unit_type
    id: "Aragwaith Greatbow"
    name: _"Greatbow"
    race: "aragwaith"
    hitpoints: 46
    movement_type: "aragwaithfoot"
    movement: 6
    experience: 150
    level: 3
    alignment: "neutral"
    advances_to: "null"
--    AMLA_DEFAULT
    cost: 45
    usage: "archer"
    description: _"Finally moving on from the dirk and dagger to the sword, the Greatbow is superior to the Strongbow in melee combat, but not as powerful as the Slayer. Their bow, however, is a masterpiece of military design. Several months are spent crafting a single bow, and each bow is crafted by the user, to his individual specifications. Due to the incredible strength required to pull these bows, anyone but the crafter who attempts to draw it could suffer serious injury." .. SPECIAL_NOTES .. SPECIAL_NOTES_PRECISION

    attack:
        name: "sword"
        description: _"sword"
        type: "blade"
        range: "melee"
        damage: 10
        number: 3

    attack:
        name: "bow"
        description: _"bow"
        type: "pierce"
        range: "ranged"
        damage: 12
        number: 4
        specials:
            WEAPON_SPECIAL_PRECISION

    variation:
        variation_name: "unhooded"
        inherit: true
