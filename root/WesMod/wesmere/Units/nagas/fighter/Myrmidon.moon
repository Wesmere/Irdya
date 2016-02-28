unit_type
    id:"Naga Myrmidon"
    name: _ "Naga Myrmidon"
    race:"naga"
    gender:{"male","female"}
    hitpoints:49
    movement_type:"naga"
    movement:7
    experience:150
    level:3
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:48
    usage:"fighter"
    -- wmllint:" local spelling blademasters"
    description: _ "The most practiced of the naga blademasters are initiated into the caste of the Myrmidon, masters of their twin-bladed art. They strike as fast as the snakes which they resemble, and dance away from attacks with grace. Not only are they potent enemies on any open terrain, but their ability to swim allows them deadly mobility in water."
    defense:
        flat:50
        sand:40
    attack:
        name:"sword"
        description: _ "sword"
        type:"blade"
        range:"melee"
        damage:9
        number:5
    female:
        name: _ "Nagini Myrmidon"
        gender:"female"
        description: _ "The most practiced of the nagini blademasters are initiated into the caste of the Myrmidon, masters of their twin-bladed art. They strike as fast as the snakes which they resemble, and dance away from attacks with grace. Not only are they potent enemies on any open terrain, but their ability to swim allows them a deadly mobility."
