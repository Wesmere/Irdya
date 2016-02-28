unit_type
    id:"Javelineer"
    name: _ "Javelineer"
    race:"human"
    hitpoints:48
    movement_type:"smallfoot"
    movement:5
    experience:100
    level:2
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:25
    usage:"fighter"
    description: _ "Spearmen almost always equip themselves with a few javelins, to harry, if not kill, enemies at range. Some, however, take to them rather well, finding that they have a natural talent in their use. Javelineers are a valuable asset to an army, being able to supplement their skill in melee combat with an ability to handle distant foes. They can hurl javelins into enemy ranks from a distance, often without retribution, and still hold their ground in melee." .. SPECIAL_NOTES .. SPECIAL_NOTES_FIRSTSTRIKE
    resistance:
        pierce:60
    attack:
        name:"spear"
        description: _ "spear"
        type:"pierce"
        range:"melee"
        damage:8
        number:3
        specials:
            WEAPON_SPECIAL_FIRSTSTRIKE
    attack:
        name:"javelin"
        description: _ "javelin"
        type:"pierce"
        range:"ranged"
        damage:11
        number:2
