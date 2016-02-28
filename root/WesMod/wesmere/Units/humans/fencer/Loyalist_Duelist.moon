unit_type
    id:"Duelist"
    name: _ "Duelist"
    race:"human"
    hitpoints:44
    movement_type:"elusivefoot"
    movement:7
    experience:90
    level:2
    alignment:"lawful"
    advances_to:"Master at Arms"
    cost:32
    usage:"mixed fighter"
    description: _ "It is a peculiar custom of Wesnoth’s nobility that they typically enroll their sons into one of two orders of armigers, training them either in the art of horsemanship or fencing. Duelists are so named for an unfortunately common practice of young aristocrats, for whom the sting of insult, whether real or fancied, can incite a rash demonstration of their natural right.

Experienced fencers carry with them a small crossbow that is easily concealed under a coat or cape. Slow to load and sometimes thought dishonorable to use, it is in fact very useful, and those of their ranks who live long enough to be veterans typically do so by making such concessions to utility and survival." .. SPECIAL_NOTES .. SPECIAL_NOTES_SKIRMISHER
    resistance:
        cold:90
    abilities:
        ABILITY_SKIRMISHER
    attack:
        name:"saber"
        description: _ "saber"
        type:"blade"
        range:"melee"
        damage:5
        number:5
    attack:
        name:"crossbow"
        description: _ "crossbow"
        type:"pierce"
        range:"ranged"
        damage:12
        number:1
