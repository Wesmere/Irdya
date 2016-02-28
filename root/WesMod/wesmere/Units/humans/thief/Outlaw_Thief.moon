unit_type
    id:"Thief"
    name: _ "Thief"
    race:"human"
    gender:{"male","female"}
    hitpoints:24
    movement_type:"elusivefoot"
    movement:6
    experience:28
    level:1
    alignment:"chaotic"
    advances_to:"Rogue"
    cost:13
    usage:"fighter"
    description: _ "For as long as anyone can remember, the members of the various ‘guilds’ of rat-catchers that spring up in any larger city have had a curious practice of bleaching their hair with lime till it becomes a pale shade of blue. It is a bold thing to do, as their profession often delves into less-than-legal enterprises. Thieves have many skills, and by necessity are both light on their feet, and good with knives. They happily employ less-than-honorable tactics in combat, seeing little merit in a ‘fair fight’." .. SPECIAL_NOTES .. SPECIAL_NOTES_BACKSTAB
    attack:
        name:"dagger"
        description: _ "dagger"
        type:"blade"
        range:"melee"
        damage:4
        number:3
        specials:WEAPON_SPECIAL_BACKSTAB
    female:
        name: _ "female^Thief"
        gender:"female"
