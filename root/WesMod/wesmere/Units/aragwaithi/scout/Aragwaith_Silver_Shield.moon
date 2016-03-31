unit_type
    id: "Aragwaith Silver Shield"
    name: _"Silver Shield"
    race: "aragwaith"
    hitpoints: 62
    movement_type: "aragwaithmounted"
    movement: 9
    experience: 150
    level: 3
    alignment: "neutral"
    advances_to: "null"
--    AMLA_DEFAULT
    undead_variation: "mounted"
    gender: {"male", "female"}
    cost: 48
    usage: "scout"
    description: _"The Silver Shields are named for obvious reasons; the distinctive shields that they carry set them apart from the common horseman. The shield is given to a warrior only after long and distinguished service, and they are greatly respected by their countrymen."

    attack:
        name: "spear"
        description: _"spear"
        type: "pierce"
        range: "melee"
        damage: 12
        number: 4

    female:
        name: _"female^Silver Shield"
        gender: "female"
