unit_type
    id:"Dread Bat"
    name: _ "Dread Bat"
    race:"bats"
    trait:TRAIT_FERAL_MUSTHAVE
    hitpoints:33
    movement_type:"smallfly"
    movement:9
    experience:100
    level:2
    alignment:"chaotic"
    advances_to:nil
    cost:34
    usage:"scout"
    description: _ "The most vicious, predatory, and successful of the Blood Bats become Dread Bats, gaining the ability to drain not merely the blood but the very life energy of their victims." .. SPECIAL_NOTES .. SPECIAL_NOTES_DRAIN
    resistance:
        cold:70
    defense:
        village:50
    attack:
        name:"fangs"
        description: _ "fangs"
        type:"blade"
        range:"melee"
        damage:6
        number:4
        specials:WEAPON_SPECIAL_DRAIN
