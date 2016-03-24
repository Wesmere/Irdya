unit_type
    id: "Aragwaith Swordsmaster"
    name: _"Swordsmaster"
    race: "aragwaith"
    hitpoints: 52
    movement_type: "aragwaithfoot"
    movement: 6
    experience: 150
    level: 3
    alignment: "neutral"
    advances_to: "null"
--    AMLA_DEFAULT
    cost: 43
    usage: "fighter"
    description: _[[Swordsmasters do not get their title from one day to another. They have endured years of rigorous Aragwaithi military training, and survived many ferocious battles. Their skill with their blades is spoken of with awe among those few foes who have witnessed it - and lived.

Having earned their title, Swordsmasters take responsibility for instructing the young, passing by generation on generation the proud Aragwaithi martial traditions.]] .. SPECIAL_NOTES .. SPECIAL_NOTES_MARKSMAN

    attack:
        name: "long-sword"
        description: _"longsword"
        type: "blade"
        range: "melee"
        damage: 10
        number: 5
        specials:
            WEAPON_SPECIAL_MARKSMAN
