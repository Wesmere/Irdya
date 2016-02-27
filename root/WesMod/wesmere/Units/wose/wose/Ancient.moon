unit_type
    id:"Ancient Wose"
    name: _ "Ancient Wose"
    race:"wose"
    hitpoints:80
    movement_type:"treefolk"
    movement:4
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:48
    description: _ [[There is a curious story of a farmer who had a great oak in his lawn, a tree which had stood when his father first broke the soil on that land, and under which his family had many memories. It was thus a shock to him, one morning, when he awoke to find it somehow spirited away, with nothing but a bare patch of earth where it once stood.

Such encounters are all that is known of what are presumably the most ancient of woses.]] .. SPECIAL_NOTES .. SPECIAL_NOTES_AMBUSH .. SPECIAL_NOTES_REGENERATES
    usage:"fighter"
    abilities: {
        ABILITY_AMBUSH
        ABILITY_REGENERATES
    }
    attack:
        name:"crush"
        description: _ "crush"
        type:"impact"
        range:"melee"
        damage:25
        number:2
