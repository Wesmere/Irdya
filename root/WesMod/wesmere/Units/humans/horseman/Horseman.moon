unit_type
    id:"Horseman"
    name: _ "Horseman"
    race:"human"
    hitpoints:38
    movement_type:"mounted"
    movement:8
    experience:44
    level:1
    alignment:"lawful"
    advances_to:{"Knight","Lancer"}
    undead_variation:"mounted"
    cost:23
    usage:"fighter"
    description: _ "Often hailing from the wilder and untamed regions of Wesnoth, Horsemen are trained from childhood to ride and to follow a strict code of honor. A charge made by a horseman is a powerful though risky tactic, the worth of which has been proven time and time again on the battlefield. Horsemen excel against most infantry, especially those who have fallen out of line, but must take care against both spearmen and archers for whom their large size provide inviting targets." .. SPECIAL_NOTES .. SPECIAL_NOTES_CHARGE .. SPECIAL_NOTES_DEFENSE_CAP

    attack:
        name:"spear"
        description: _ "spear"
        type:"pierce"
        specials:
            WEAPON_SPECIAL_CHARGE
        range:"melee"
        damage:9
        number:2





