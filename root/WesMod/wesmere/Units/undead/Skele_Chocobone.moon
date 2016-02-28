unit_type
    id:"Chocobone"
    name: _ "Chocobone"
    race:"undead"
    hitpoints:45
    movement_type:"undeadfoot"
    defense:
        hills:60
        mountains:50
        fungus:60
        forest:-70
        village:60
    resistance:
        blade:80
    movement:9
    experience:100
    level:2
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    abilities:
        ABILITY_SUBMERGE
    cost:38
    usage:"scout"
    description: _ "Riding the bones of ostrich-like large birds once used as mounts by a lost civilization, the skeletal Chocobones can move faster than most cavalry units." .. SPECIAL_NOTES .. SPECIAL_NOTES_SUBMERGE .. SPECIAL_NOTES_CHARGE .. SPECIAL_NOTES_DEFENSE_CAP
    attack:
        name:"spear"
        description:"_spear"
        type:"pierce"
        range:"melee"
        specials:
            WEAPON_SPECIAL_CHARGE
        damage:11
        number:2
