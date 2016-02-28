unit_type
    id:"Troll"
    name: _ "Troll"
    race:"troll"
    hitpoints:55
    movement_type:"largefoot"
    movement:5
    experience:66
    level:2
    alignment:"chaotic"
    advances_to:"Troll Warrior"
    cost:29
    description: _ "Trolls have long troubled the thoughts of humanity and dwarf-kind. Sages remain baffled at the origins of these creatures and the driving force behind their unnatural vitality and strength. A fully-grown troll towers above a man, and, even unarmed, would be a great threat in combat. The large clubs typically favored in fighting act as extensions of their arms, used for the same purpose of mauling their prey into submission." .. SPECIAL_NOTES .. SPECIAL_NOTES_REGENERATES
    usage:"fighter"
    abilities:
        ABILITY_REGENERATES
    attack:
        name:"club"
        description:"_club"
        type:"impact"
        range:"melee"
        damage:14
        number:2
