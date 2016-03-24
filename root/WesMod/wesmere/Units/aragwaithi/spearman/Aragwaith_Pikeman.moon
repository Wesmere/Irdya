unit_type
    id: "Aragwaith Pikeman"
    name: _"Pikeman"
    race: "aragwaith"
    hitpoints: 50
    movement_type: "aragwaithfoot"
    movement: 5
    experience: 70
    level: 2
    alignment: "neutral"
    advances_to: "Aragwaith Guardian"
    cost: 28
    usage: "fighter"
    description: _"Spearmen who have served for several campaigns are awarded with pikes in recognition of their skill and strength. A pike is  more difficult to wield than a spear, but it is considerably more potent; a line of pikemen is the bane of cavalry everywhere." .. SPECIAL_NOTES .. SPECIAL_NOTES_FIRSTSTRIKE
    resistance:
        blade: 90
        pierce: 80

    attack:
        name: "spear"
        description: _"spear"
        type: "pierce"
        range: "melee"
        damage: 16
        number: 2
        specials:
            WEAPON_SPECIAL_FIRSTSTRIKE
