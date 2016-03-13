unit_type
    id:"Mermaid Enchantress"
    name: _ "female^Mermaid Enchantress"
    race:"merman"
    gender:"female"
    hitpoints:38
    movement_type:"swimmer"
    movement:6
    experience:90
    level:2
    alignment:"lawful"
    advances_to:"Mermaid Siren"
    cost:33
    usage:"mixed fighter"
    description: _ "Mermaids, like elves, have a powerful and native ability in magic, though theirs is considerably different than that of the elves. Those who master this ability are held in high regard, and their skill is used in a multitude of crafts, many of which humanity would never dream. The obvious use in war is forbidden against their own race — this power is the greater part of what protects their people from the monsters that wander out of the abyss." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL
    attack:
        name:"staff"
        description:"staff"
        type:"impact"
        range:"melee"
        damage:9
        number:1
    attack:
        name:"water spray"
        description: _ "water spray"
        type:"impact"
        range:"ranged"
        specials:{
            WEAPON_SPECIAL_MAGICAL
            }
        damage:14
        number:2
