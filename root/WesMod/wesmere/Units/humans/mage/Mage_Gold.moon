unit_type
    id: "Gold Mage"
    name: _"Gold Mage"
    race: "human"
    gender: "male"
    hitpoints: 58
    movement_type: "smallfoot"
    movement: 6
    experience: 200
    advancefrom: if ENABLE_GOLD_MAGE then {
        unit: "Silver Mage"
        experience: 220
    }
    level: 4
    alignment: "neutral"
    advances_to: "null"
    -- AMLA_DEFAULT
    cost: 65
    usage: "mixed fighter"
    description: _[[Amongst the various Magi orders, the Silver one is certain the most enigmatic, surpassed in its mysteriousity only by the Gold order. Only the best Silver Magi could aspire to become Gold Magi, and being one of them is perhaps an even greater honor than being a Great Mage. Instead of focusing their studies on the brute force of their missiles, they follow a secret path of training, that leads them to learning better protection spells and improving their fighting technique, not forgetting their teleport spells.
Seeing one of them on the battlefield is an extremely rare event, that even most Wesnoth Kings  never witnessed. But when one of them appears, usually in times of dire need, their only presence is enough to panic the enemy troops; and, after having enlightened the field with their shining robes and their magic missiles, they vanish into aether, without leaving any trace of their presence, except in the memories and in the tales of the few people that seen them in action.

Gold magi are often more physically adept than other magi, and their skills are of undeniable use on the battlefield, if one can manage to induce the mage to apply them."]] .. SPECIAL_NOTES .. _"SPECIAL_NOTE^ Gold Magi Magi are well-attuned to their magical natures and are highly resistant to non-physical damage." .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_TELEPORT
    abilities:
        ABILITY_TELEPORT
    resistance:
        fire: 50
        cold: 50

    attack:
        name: "staff"
        description: _"staff"
        type: "impact"
        range: "melee"
        damage: 9
        number: 2

    attack:
        name: "missile"
        description: _"missile"
        type: "fire"
        range: "ranged"
        specials:
            WEAPON_SPECIAL_MAGICAL
        damage: 11
        number: 4

    female:
        name: _"female^Gold Mage"
        gender: "female"
