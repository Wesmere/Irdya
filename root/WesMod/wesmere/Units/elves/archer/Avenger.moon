unit_type
    id:"Elvish Avenger"
    name: _ "Elvish Avenger"
    race:"elf"
    gender:{"male","female"}
    hitpoints:55
    movement_type:"woodland"
    movement:6
    experience:150
    level:3
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:60
    usage:"mixed fighter"
    description: _ "The curious name of the elvish ‘Avengers’ comes from a tactic often employed by these master rangers. The enemy is allowed to break through a feint defense, and when the vulnerable troops behind the front line follow, these archers break cover and attack, cutting the supply lines and surrounding the enemy in one fell stroke.

This has, at times, been interpreted as a form of vengeance for their brethren lost earlier in the battle. Although not so base in design, it is not at all inaccurate." .. SPECIAL_NOTES .. SPECIAL_NOTES_AMBUSH
    movement_costs:
        shallow_water:2
        mountains:2
    defense:
        shallow_water:70
        swamp_water:60
        sand:60
    abilities:
        ABILITY_AMBUSH
    attack:
        name:"sword"
        description:"_sword"
        type:"blade"
        range:"melee"
        damage:8
        number:4
    attack:
        name:"bow"
        description:"_bow"
        type:"pierce"
        range:"ranged"
        damage:10
        number:4
    female:
        name: _ "female^Elvish Avenger"
        gender:"female"
