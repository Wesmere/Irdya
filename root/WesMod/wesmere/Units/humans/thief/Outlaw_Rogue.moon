unit_type
    id:"Rogue"
    name: _ "Rogue"
    race:"human"
    gender:{"male","female"}
    hitpoints:40
    movement_type:"elusivefoot"
    movement:6
    experience:70
    level:2
    alignment:"chaotic"
    advances_to:"Assassin"
    cost:24
    usage:"fighter"
    description: _ "The ringleaders of any group of thieves earn their positions by skill. These rogues have spent many an unpleasant moment darting through crowds and dodging away from those who wish them ill, a set of skills which is very handy in a fight. Masters of knifework, they can also throw knives with reliable accuracy, and their long hours of prowling around at night leave them more comfortable fighting in the dark." .. SPECIAL_NOTES .. SPECIAL_NOTES_BACKSTAB .. SPECIAL_NOTES_SKIRMISHER
    abilities:
        ABILITY_SKIRMISHER
    attack:
        name:"dagger"
        description: _ "dagger"
        type:"blade"
        range:"melee"
        damage:6
        number:3
        specials:
            WEAPON_SPECIAL_BACKSTAB
    attack:
        name:"knife"
        description: _ "knife"
        type:"blade"
        range:"ranged"
        damage:4
        number:3
    female:
        name: _ "female^Rogue"
        gender:"female"
