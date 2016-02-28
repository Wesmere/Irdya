unit_type
    id:"Dwarvish Ulfserker"
    name: _ "Dwarvish Ulfserker"
    -- wmllint:" general spelling ulfserker"
    race:"dwarf"
    hitpoints:34
    movement_type:"dwarvishfoot"
    movement:5
    experience:42
    level:1
    alignment:"neutral"
    advances_to:"Dwarvish Berserker"
    cost:19
    usage:"fighter"
    description: _ "Dwarves are an ancient race of powerful fighters. Ulfserkers are the most ferocious of these; in battle, they will work themselves into a blind rage wherein they feel neither fear nor pain, and will pay no heed to any wounds they receive." .. SPECIAL_NOTES .. SPECIAL_NOTES_BERSERK
    defense:
        hills:60
        mountains:50
        village:60
        cave:60
        castle:60
    attack:
        name:"berserker frenzy"
        description: _ "berserker frenzy"
        type:"blade"
        specials:
            WEAPON_SPECIAL_BERSERK
        range:"melee"
        damage:4
        number:4
