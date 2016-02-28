unit_type
    id:"Halberdier"
    name: _ "Halberdier"
    race:"human"
    hitpoints:72
    movement_type:"smallfoot"
    movement:5
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:44
    usage:"fighter"
    description: _ "A halberd is a heavy weapon and difficult to use, but very powerful in the hands of an expert. It is also much more flexible than the spear from which it descended. As any halberdier can tell you, the weapon possesses four primary striking points, two more than a spear or pike; these are the tip, the blade, the spike at the base of the shaft, and the inner point on the blade, which can be used in a motion pulling back towards the wielder. All this makes for a very versatile weapon in melee, especially against cavalry.

However, a halberd is notably more expensive to craft than a spear, and in the hands of a novice, much less effective. In the armies of Wesnoth, it is customary only to grant these weapons to veteran pikemen, who have proven that they have the skill to employ them properly on the field of war." .. SPECIAL_NOTES .. SPECIAL_NOTES_FIRSTSTRIKE
    resistance:
        pierce:60
    attack:
        name:"halberd"
        description: _ "halberd"
        type:"pierce"
        range:"melee"
        damage:15
        number:3
        specials:
            WEAPON_SPECIAL_FIRSTSTRIKE
    attack:
        name:"halberd"
        description: _ "halberd"
        type:"blade"
        range:"melee"
        damage:19
        number:2
