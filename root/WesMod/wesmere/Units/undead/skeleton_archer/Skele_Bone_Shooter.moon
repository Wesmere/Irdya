unit_type
    id:"Bone Shooter"
    name: _ "Bone Shooter"
    race:"undead"
    hitpoints:40
    movement_type:"undeadfoot"
    movement:5
    experience:80
    level:2
    alignment:"chaotic"
    advances_to:"Banebow"
    cost:26
    description: _ "Of a dark sorcerer’s creations, some take more strongly to the false life given them. The potency of their un-life is given equipment to match; archers, in particular, are often outfitted with a truly vile arsenal. Their quivers are filled with shafts made not of wood, but of the bones of their victims. It follows that they are dubbed simply ‘Bone-Shooters’ by their unfortunate enemies." .. SPECIAL_NOTES .. SPECIAL_NOTES_SUBMERGE
    usage:"archer"
    abilities:
        ABILITY_SUBMERGE
    resistance:
        blade:60
        pierce:40
        impact:120
    attack:
        name:"dagger"
        description:"_dagger"
        type:"blade"
        range:"melee"
        damage:6
        number:2
    attack:
        name:"bow"
        description:"_bow"
        type:"pierce"
        range:"ranged"
        damage:10
        number:3
