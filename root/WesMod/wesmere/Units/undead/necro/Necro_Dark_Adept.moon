unit_type
    id:"Dark Adept"
    name: _ "Dark Adept"
    gender:"male",female
    race:"human"
    ignore_race_traits:"yes"
    TRAIT_QUICK
    TRAIT_INTELLIGENT
    TRAIT_RESILIENT
    hitpoints:28
    movement_type:"smallfoot"
    movement:5
    experience:48
    level:1
    alignment:"chaotic"
    advances_to:"Dark Sorcerer"
    cost:16
    usage:"archer"
    description: _ "To attract any practitioners, the lure of black magic must be a great prize indeed, for anyone caught practicing the art in the civilized world is subject to a death sentence. And yet there are those who pursue this art, for the prize offered is nothing less than immortality. Hidden away in secret cults, or initiated into the dark orders of the underworld, the training which these fanatics must endure often drives them to exhaustion and enfeeblement.

In such condition, their only weapon is the craft they have so committed themselves to learning." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_ARCANE
    attack:
        name:"chill wave"
        description:"_chill wave"
        type:"cold"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"ranged"
        damage:10
        number:2
    attack:
        name:"shadow wave"
        description:"_shadow wave"
        type:"arcane"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"ranged"
        damage:7
        number:2

    [recruiting_anim]
        [filter_second]
            race:"undead"
        [/filter_second]
        start_time:-450
        [frame]
        [/frame]
        [frame]
        [/frame]
        [frame]
            halo_x,halo_y:0,-12
        [/frame]
        sound_start_time:-40
        [sound_frame]
            sound:"magic"-dark.ogg
        [/sound_frame]
        [frame]
        [/frame]
        [frame]
        [/frame]
    [/recruiting_anim]
    female:
        gender:"female"
        name: _ "female^Dark Adept"
        [recruiting_anim]
            [filter_second]
                race:"undead"
            [/filter_second]
            [frame]
            [/frame]
            [frame]
            [/frame]
            [frame]
            [/frame]
            [frame]
            [/frame]
            [frame]
            [/frame]
        [/recruiting_anim]
