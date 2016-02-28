unit_type
    id:"Naffat"
    name: _ "Naffat"
    race:"khalifate"
    ignore_race_traits:"yes"
    trait:{ TRAIT_QUICK
        TRAIT_INTELLIGENT
        TRAIT_RESILIENT }
    hitpoints:31
    movement_type:"khalifatefoot"
    movement:5
    experience:44
    level:1
    alignment:"lawful"
    -- Below unit id changed to use underscores in unit ID only (not in displayed name) to fix bug #18117
    advances_to:"Qatif_al_nar"
    cost:19
    usage:"archer"
    description: _ "Naffat are a necessary evil in the ranks of Khalifate armies, utilizing fire to burn down enemy fortifications and sow terror among their ranks. While the use of fire in warfare is not a novel concept, the flames of the Naffat have proven disturbingly difficult for their enemies to extinguish."
    attack:
        name:"naphtha attack"
        description: _ "naphtha attack"
        type:"fire"
        range:"melee"
        damage:8
        number:2
    attack:
        name:"fire arrow"
        description: _ "fire arrow"
        type:"fire"
        range:"ranged"
        damage:6
        number:3

