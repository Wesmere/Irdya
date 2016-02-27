unit_type
    id:"Lich"
    name: _ "Lich"
    -- wmllint:" general spellings lich liches"
    race:"undead"
    hitpoints:60
    movement_type:"undeadfoot"
    resistance:
        arcane:140
    movement:6
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:50
    usage:"fighter"
    description: _ "A lich is the physical embodiment of black magic’s first goal: the quest to achieve immortality. Though a great deal is sacrificed in the rebirth, in becoming a lich one cheats death of that which truly gives it terror. For it is the mind that is retained, and the spirit which follows, though the body may wither away.

It is not known, save perhaps by the inner circles of necromancy, whether life is prolonged indefinitely or simply extended. But the fact that this question can be raised at all, testifies to the magnitude of what their order has achieved." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_DRAIN .. SPECIAL_NOTES_ARCANE .. SPECIAL_NOTES_SUBMERGE
    [movement_costs]
        shallow_water:3
    [/movement_costs]
    abilities:
        ABILITY_SUBMERGE
    attack:
        name:"touch"
        description:"_touch"
        type:"arcane"
        range:"melee"
        damage:8
        number:3
        specials:
            WEAPON_SPECIAL_DRAIN
    attack:
        name:"chill tempest"
        description:"_chill tempest"
        type:"cold"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"ranged"
        damage:12
        number:3
    attack:
        name:"shadow wave"
        description:"_shadow wave"
        type:"arcane"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"ranged"
        damage:9
        number:3


    [recruiting_anim]
        [filter_second]
            race:"undead"
        [/filter_second]
        start_time:-300
        [frame]
        [/frame]
        [frame]
        [/frame]
        sound_start_time:-75
        [sound_frame]
            sound:"magic"-dark-big.ogg
        [/sound_frame]
        [frame]
        [/frame]
        [frame]
        [/frame]
    [/recruiting_anim]
