unit_type
    id:"Vampire Bat"
    name: _ "Vampire Bat"
    race:"bats"
    trait:TRAIT_FERAL_MUSTHAVE
    hitpoints:16
    movement_type:"smallfly"
    movement:8
    experience:22
    level:0
    alignment:"chaotic"
    advances_to:"Blood Bat"
    cost:13
    usage:"scout"
    description: _ "Vampire bats are flying beasts that feed on the blood of other creatures. While their fangs are not very powerful, the health of victims is drained away along with their blood, and given to the Bats." .. SPECIAL_NOTES .. SPECIAL_NOTES_DRAIN
    resistance:
        cold:70
    defense:
        village:50
    attack:
        name:"fangs"
        description: _ "fangs"
        type:"blade"
        range:"melee"
        damage:4
        number:2
        specials:WEAPON_SPECIAL_DRAIN
