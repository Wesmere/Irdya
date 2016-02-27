unit_type
    id:"Dark Sorcerer"
    name: _ "Dark Sorcerer"
    gender:"male",female
    race:"human"
    hitpoints:48
    movement_type:"smallfoot"
    movement:5
    experience:90
    level:2
    alignment:"chaotic"
    advances_to:"Lich",Necromancer
    cost:32
    usage:"mixed fighter"
    description: _ "The dread inspired by black magic is enhanced by the secrecy and fell rumors which surround it. Dark sorcerers have begun to unlock the secrets of life and death, the latter of which is all too easy to inflict. This labor gives the first glimmerings of the connection between the soul and inert matter, and the first successful experiments in manipulating this bond. The terrible unknown that lurks beyond death is glimpsed, and will inevitably be fathomed.

Despite any design they may have of using this to wrest their own immortality from nature’s grasp, the first results of their work have immediate, and unpleasant applications. The life they breathe into dead matter can create servants for them, servants which will work, but which will also kill, and will never question their masters. These creations have a loyalty any tyrant would dream of, and it is tempting to those with even the slightest desire for power." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_ARCANE
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
            sound:"magic"-dark.ogg
        [/sound_frame]
        [frame]
        [/frame]
        [frame]
        [/frame]
    [/recruiting_anim]
    attack:
        name:"staff"
        description:"_staff"
        type:"impact"
        range:"melee"
        damage:4
        number:3
    attack:
        name:"chill wave"
        description:"_chill wave"
        type:"cold"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"ranged"
        damage:13
        number:2
    attack:
        name:"shadow wave"
        description:"_shadow wave"
        type:"arcane"
        specials:
            WEAPON_SPECIAL_MAGICAL
        range:"ranged"
        damage:9
        number:2
    female:
        name: _ "Dark Sorceress"
        gender:"female"
        description: _ "The dread inspired by black magic comes chiefly from how little is known about it by the common man. Dark sorceresses have begun to unlock the secrets of life and death, the latter of which is all too easy to inflict. This labor gives the first glimmerings of the connection between the soul and inert matter, and the first successful experiments in manipulating this bond. The terrible unknown that lurks beyond death is glimpsed, and will inevitably be fathomed.

Despite any design they may have of using this to wrest their own immortality from nature’s grasp, the first results of their work have immediate, and unpleasant applications. The life they breathe into dead matter can create servants for them, servants which will work, but which will also kill, and will never question their mistress. These creations have a loyalty any tyrant would dream of, and it is tempting to those with even the merest desire for power." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL
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
        [/recruiting_anim]
