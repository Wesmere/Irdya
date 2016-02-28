unit_type
    id:"Tabib"
    name: _ "Tabib"
    race:"khalifate"
    hitpoints:39
    movement_type:"khalifatefoot"
    abilities:
        ABILITY_CURES
        ABILITY_REGENERATES
    movement:5
    experience:100
    level:2
    alignment:"liminal"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:33
    usage:"fighter"
    description: _ "Some men excel at medicine the way others do at strength of arms, and the Tabib are those whose knowledge is without peer outside of the Khalifate. Their remedies cannot only heal wounds but remove infection and poison as well, often to the disbelief of the injured. Hardened by years of travels, many are able to treat themselves." .. SPECIAL_NOTES .. SPECIAL_NOTES_CURES .. SPECIAL_NOTES_REGENERATES
    attack:
        name:"mace"
        description: _ "mace"
        type:"impact"
        range:"melee"
        damage:9
        number:3

