unit_type
    id:"Mermaid Priestess"
    name: _ "female^Mermaid Priestess"
    race:"merman"
    gender:"female"
    hitpoints:31
    resistance:
        arcane:80
    movement_type:"swimmer"
    movement:6
    experience:132
    level:2
    alignment:"lawful"
    advances_to:"Mermaid Diviner"
    cost:38
    usage:"healer"
    description: _ "Among mermen, mysticism is generally left to the mermaids, who are more inclined to it. It is they who dedicate themselves to the ideal of bringing peace and life to the world, and to the arts which make that possible. Their piety also grants them certain powers, allowing them to guard their people against magical or unnatural things." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_ARCANE .. SPECIAL_NOTES_CURES
    abilities:
        ABILITY_CURES
    attack:
        name:"staff"
        description: _ "staff"
        type:"impact"
        range:"melee"
        damage:5
        number:3
    attack:
        name:"lightbeam"
        description: _ "lightbeam"	-- wmllint: no spellcheck (until name->id)
        type:"arcane"
        range:"ranged"
        specials:
            WEAPON_SPECIAL_MAGICAL
        damage:6
        number:4
