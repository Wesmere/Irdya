unit_type
    id:"Blood Bat"
    name: _ "Blood Bat"
    race:"bats"
    trait:TRAIT_FERAL_MUSTHAVE
    hitpoints:27
    movement_type:"smallfly"
    movement:9
    experience:70
    level:1
    alignment:"chaotic"
    advances_to:"Dread Bat"
    cost:21
    usage:"scout"
    description: _ "Blood Bats are so named because of their ruddy hue, which some mark as a symbol of their preferred diet. These creatures are fast and can drain the blood of those they attack, thereby gaining some of the health lost by their victims." .. SPECIAL_NOTES .. SPECIAL_NOTES_DRAIN
    resistance:
        cold:70
    defense:
        village:50
    attack:
        name:"fangs"
        description: _ "fangs"
        type:"blade"
        range:"melee"
        damage:5
        number:3
        specials:WEAPON_SPECIAL_DRAIN
