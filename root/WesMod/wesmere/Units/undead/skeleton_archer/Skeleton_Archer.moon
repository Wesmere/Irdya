unit_type
    id:"Skeleton Archer"
    name: _ "Skeleton Archer"
    race:"undead"
    hitpoints:31
    movement_type:"undeadfoot"
    movement:5
    experience:35
    level:1
    alignment:"chaotic"
    advances_to:"Bone Shooter"
    cost:14
    description: _ "A skeleton archer is little different from the ‘skeletons’ which often accompany it — it is a sin against nature, a warrior raised from the dead to fight once again. In their masters’ hands, these soldiers will do anything to achieve the tasks laid before them, for death holds no fear for one who is already dead." .. SPECIAL_NOTES .. SPECIAL_NOTES_SUBMERGE
    usage:"archer"
    abilities:
        ABILITY_SUBMERGE
    resistance:
        blade:60
        pierce:40
        impact:120
    attack:
        name:"fist"
        description:"_fist"
        type:"impact"
        range:"melee"
        damage:3
        number:2
    attack:
        name:"bow"
        description:"_bow"
        type:"pierce"
        range:"ranged"
        damage:6
        number:3
