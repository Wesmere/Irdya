unit_type
    id:"Troll Whelp"
    name: _ "Troll Whelp"
    race:"troll"
    hitpoints:42
    movement_type:"largefoot"
    movement:4
    experience:36
    level:1
    alignment:"chaotic"
    advances_to:{"Troll","Troll Rocklobber"}
    cost:13
    usage:"fighter"
    description: _ "Describing a troll as a whelp is something of an oxymoron, given that their bodies are already much hardier than that of a grown man. They are clumsy and not yet capable of walking properly, forced instead to shamble about on all fours, but any difficulty this causes them is more than made up for by the raw strength of their race." .. SPECIAL_NOTES .. SPECIAL_NOTES_REGENERATES
    abilities:
        ABILITY_REGENERATES
    attack:
        name:"fist"
        description:"_fist"
        type:"impact"
        range:"melee"
        damage:7
        number:2
    -- images for death are still based on the old, green baseframe
    -- commenting out till the images are updated
