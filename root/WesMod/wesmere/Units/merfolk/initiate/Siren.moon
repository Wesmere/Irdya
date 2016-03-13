unit_type
    id:"Mermaid Siren"
    name: _ "Mermaid Siren"
    race:"merman"
    gender:"female"
    hitpoints:49
    movement_type:"swimmer"
    movement:7
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:52
    usage:"mixed fighter"
    description: _ "The faerie nature of the mermaids is strongest in the Sirens, whose connection to the currents of magic often causes them to be mistaken for naiads themselves. Though certainly far from the truth, the mistake is understandable, as true naiads are rarely seen even by mermaids. The manifestation of their magic is certainly very similar; the water about a siren can be commanded at whim, like an extension of herself.

The myriad applications of this rarely occur to land dwellers, who simply regard it with wonder." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL
    attack:
        --note - this "naia" is deliberate, it is not a typo, it is not supposed to be "naiad".
        -- wmllint:" local spelling naia"
        name:"naia touch"
        description: _ "naia touch"
        type:"impact"
        range:"melee"
        specials:
            WEAPON_SPECIAL_MAGICAL
        damage:12
        number:1
    attack:
        name:"water spray"
        description: _ "water spray"
        type:"impact"
        range:"ranged"
        specials:
            WEAPON_SPECIAL_MAGICAL
        damage:15
        number:3
