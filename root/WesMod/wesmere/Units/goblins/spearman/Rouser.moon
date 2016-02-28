unit_type
    id:"Goblin Rouser"
    name: _ "Goblin Rouser"
    race:"goblin"
    hitpoints:31
    movement_type:"orcishfoot"
    movement:5
    experience:50
    level:1
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:13
    usage:"fighter"
    description: _ "Standard-bearers are an oddity amongst goblins. A goblin who has survived enough battles to be considered a veteran is rare enough, and it is rarer still for the other goblins to recognize and respect his veteran status. Nonetheless, a rouser’s frenzied goading effectively steels the less veteran fighters to strive harder and longer before they die." .. SPECIAL_NOTES .. SPECIAL_NOTES_LEADERSHIP
    abilities:
        ABILITY_LEADERSHIP
    attack:
        name:"spear"
        description: _ "spear"
        type:"pierce"
        range:"melee"
        damage:7
        number:3
