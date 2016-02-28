unit_type
    id:"Deathblade"
    name: _ "Deathblade"
    race:"undead"
    hitpoints:39
    movement_type:"undeadfoot"
    movement:6
    experience:100
    level:2
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:28
    usage:"fighter"
    description: _ "In life, the abominations known as ‘Deathblades’ were masters of combat, soldiers who were both lithe and deadly. Their new masters, recognizing this, outfit them to match the skills they once had. Though frail, these monsters are much faster than the rest of their kind, both on foot and with their blades." .. SPECIAL_NOTES .. SPECIAL_NOTES_SUBMERGE
    abilities:
        ABILITY_SUBMERGE
    resistance:
        blade:60
        impact:120
        pierce:40
    attack:
        name:"axe"
        description:"_axe"
        type:"blade"
        range:"melee"
        damage:8
        number:5
