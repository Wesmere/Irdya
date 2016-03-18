unit_type
    id: "Djinn"
    name: _"Djinn"
    race: "elemental"
    trait: {
        TRAIT_EMERALD
        TRAIT_SAPPHIRE
        TRAIT_AMETHYST
        TRAIT_AMETHYST
    }
    hitpoints: 52
    movement_type: "windfly"
    movement: 6
    experience: 150
    level: 3
    alignment: "neutral"
    advances_to: "null"
    -- AMLA_DEFAULT
    cost: 54
    usage: "archer"

    description: _[[For centuries, there have been tales about mighty wind spirits known as djinns that are oft summonable with magical metallic objects of ethereal origin. In many stories, these objects are oil lamps. Most of the tales mention that if a djinn is summoned by these types of objects, the djinn is obliged to carry out the wishes of the summoner. Due to this fact, the abilities of djinns are often highly exaggerated, to the point of granting any wish of the summoner. In reality, these spirits are only capable of accomplishing feats within the limits of the power of the wind and swordsmanship.
Despite the reality of these creatures' abilities, many believe that djinns are virtually omnipotent beings, thus they speculate what force or god created the djinn and for what reason. Some even believe that a race of divine beings created the djinn in order to serve them. Although these theories could be true, djinns are often spawned by violent storms being exposed to incredibly powerful magic or created by immensely powerful wind mages.]]

    attack:
        name: "scimitar"
        description: _"scimitar"
        type: "blade"
        range: "melee"
        damage: 9
        number: 3

    attack:
        name: "tornado"
        description: _"tornado"
        type: "impact"
        range: "ranged"
        damage: 19
        number: 2
