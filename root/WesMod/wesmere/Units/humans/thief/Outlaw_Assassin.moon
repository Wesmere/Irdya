unit_type
    id:"Assassin"
    name: _ "Assassin"
    race:"human"
    gender:{"male","female"}
    hitpoints:51
    movement_type:"elusivefoot"
    movement:6
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:44
    usage:"fighter"
    description: _ "The greatest of thieves are sometimes tasked to take far more than their victim’s belongings. Masters of knife-fighting and uncannily light on their feet, these menacing figures will employ any means to dispatch their victims, be it poisoned knives thrown from afar, or a dagger planted in the back. Deadly at night, assassins are less able fighting under the sun." .. SPECIAL_NOTES .. SPECIAL_NOTES_BACKSTAB .. SPECIAL_NOTES_POISON .. SPECIAL_NOTES_SKIRMISHER
    abilities:
        ABILITY_SKIRMISHER
    attack:
        name:"dagger"
        description: _ "dagger"
        type:"blade"
        range:"melee"
        damage:8
        number:3
        specials:WEAPON_SPECIAL_BACKSTAB
    attack:
        name:"knife"
        description:"_knife"
        type:"blade"
        range:"ranged"
        specials:WEAPON_SPECIAL_POISON
        damage:5
        number:3
    female:
        name: _ "female^Assassin"
        gender:"female"
