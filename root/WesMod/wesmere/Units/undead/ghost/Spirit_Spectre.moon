unit_type
    id:"Spectre"
    name: _ "Spectre"
    race:"undead"
    hitpoints:33
    movement_type:"undeadspirit"
    movement:7
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:52
    usage:"scout"
    description: _ "Sometimes called the ‘hollow men’, spectres form the right arm of their masters’ powers. They are an unholy terror to the living, for they are quite as deadly as their appearance suggests.

The creation of these is itself no mean feat, but the real danger in encountering one is that it is likely only the harbinger of a much more dangerous force that will follow in its wake." .. SPECIAL_NOTES .. SPECIAL_NOTES_DRAIN .. SPECIAL_NOTES_SPIRIT .. SPECIAL_NOTES_ARCANE
    attack:
        name:"baneblade"
        description:"_baneblade"	-- wmllint: no spellcheck (until name->id)
        type:"arcane"
        range:"melee"
        damage:9
        number:4
        specials:
            WEAPON_SPECIAL_DRAIN
    attack:
        name:"wail"
        description:"_wail"
        type:"cold"
        range:"ranged"
        damage:6
        number:3
