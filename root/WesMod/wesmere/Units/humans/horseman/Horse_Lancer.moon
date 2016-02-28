unit_type
    id:"Lancer"
    name: _ "Lancer"
    race:"human"
    hitpoints:50
    movement_type:"mounted"
    movement:10
    experience:100
    level:2
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    undead_variation:"mounted"
    cost:40
    usage:"fighter"
    description: _ "Lancers are among the bravest and most feared riders in all of Wesnoth. Clad in minimal armor, they free themselves to ride swiftly, faster than any of their peers. The daring tactics they employ are like a double-edged sword, for they often win either glory or a swift death. Lancers excel in hunting down infantrymen who have made the mistake of breaking formation, and in piercing defensive lines. However, they have limited use in defense." .. SPECIAL_NOTES .. SPECIAL_NOTES_CHARGE .. SPECIAL_NOTES_DEFENSE_CAP
    attack:
        name:"lance"
        description: _ "lance"
        type:"pierce"
        specials:
            WEAPON_SPECIAL_CHARGE
        range:"melee"
        damage:12
        number:3
