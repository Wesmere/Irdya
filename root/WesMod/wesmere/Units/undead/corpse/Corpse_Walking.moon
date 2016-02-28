
-- Variant HP, MP, and MP types for the Walking Corpse
--define UNIT_BODY_WALKING_CORPSE_STATS MOVTYPE_NAME MOVES_NUMBER HP_AMOUNT
--    hitpoints:HP_AMOUNT
--    movement_type:MOVTYPE_NAME
--    movement:MOVES_NUMBER
--enddef

-- Variant animations for the Walking Corpse
--define UNIT_BODY_WALKING_CORPSE_GRAPHICS NBASE_NAME DEATH_FRAMES_NUMBER
--enddef

-- unit_type
--     id:"Walking Corpse"
--     name: _ "Walking Corpse"
--     -- No profile variations for now
--     race:"undead"
--     TRAIT_FEARLESS_MUSTHAVE
--     level:0
--     experience:24
--     alignment:"chaotic"
--     advances_to:"Soulless"
--     cost:8
--     usage:"fighter"
--     description: _ "Walking Corpses are the bodies of the dead, re-animated by dark magic. Though not especially dangerous to a trained soldier, the sight of one’s former comrades amongst their number is frightening to say the least." .. SPECIAL_NOTES .. SPECIAL_NOTES_PLAGUE

--     attack:
--         name:"touch"
--         description:"_touch"
--         type:"impact"
--         range:"melee"
--         damage:6
--         number:2
--         specials:
--             WEAPON_SPECIAL_PLAGUE

--     resistance:
--         arcane:140
--     movement_costs:
--         deep_water:4
--     defense:
--         deep_water:90

--     UNIT_BODY_WALKING_CORPSE_STATS    smallfoot 4 18
--     UNIT_BODY_WALKING_CORPSE_GRAPHICS zombie 4

--     [variation]
--         variation_id:"drake"
--         variation_name: _ "wc_variation^Drake"
--         inherit:"yes"
--         UNIT_BODY_WALKING_CORPSE_STATS    drakefoot 4 23
--         UNIT_BODY_WALKING_CORPSE_GRAPHICS zombie-drake 4
--         movement_costs:
--             unwalkable:4
--         defense:
--             unwalkable:90
--     [/variation]

--     [variation]
--         variation_id:"dwarf"
--         variation_name: _ "wc_variation^Dwarf"
--         inherit:"yes"
--         UNIT_BODY_WALKING_CORPSE_STATS    dwarvishfoot 3 21
--         UNIT_BODY_WALKING_CORPSE_GRAPHICS zombie-dwarf 4
--         movement_costs:
--             deep_water:3
--     [/variation]

--     [variation]
--         variation_id:"goblin"
--         variation_name: _ "wc_variation^Goblin"
--         inherit:"yes"
--         UNIT_BODY_WALKING_CORPSE_STATS    smallfoot 4 13
--         UNIT_BODY_WALKING_CORPSE_GRAPHICS zombie-goblin 4
--     [/variation]

--     [variation]
--         variation_id:"gryphon"
--         variation_name: _ "wc_variation^Gryphon"
--         inherit:"yes"
--         UNIT_BODY_WALKING_CORPSE_STATS    fly 5 21
--         UNIT_BODY_WALKING_CORPSE_GRAPHICS zombie-drake 4
--         defense:
--             mountains:40
--     [/variation]

--     [variation]
--         variation_id:"mounted"
--         variation_name: _ "wc_variation^Mounted"
--         inherit:"yes"
--         -- Default portrait is fine for Mounted
--         UNIT_BODY_WALKING_CORPSE_STATS    mounted 5 21
--         UNIT_BODY_WALKING_CORPSE_GRAPHICS zombie-mounted 4
--     [/variation]

--     [variation]
--         variation_id:"saurian"
--         variation_name: _ "wc_variation^Saurian"
--         inherit:"yes"
--         UNIT_BODY_WALKING_CORPSE_STATS    lizard 4 16
--         UNIT_BODY_WALKING_CORPSE_GRAPHICS zombie-saurian 4
--     [/variation]

--     [variation]
--         variation_id:"swimmer"
--         variation_name: _ "wc_variation^Swimmer"
--         inherit:"yes"
--         UNIT_BODY_WALKING_CORPSE_STATS    swimmer 4 18
--         UNIT_BODY_WALKING_CORPSE_GRAPHICS zombie-swimmer 4
--         movement_costs:
--             forest:4
--             hills:4
--     [/variation]

--     [variation]
--         variation_id:"troll"
--         variation_name: _ "wc_variation^Troll"
--         inherit:"yes"
--         UNIT_BODY_WALKING_CORPSE_STATS    largefoot 4 21
--         UNIT_BODY_WALKING_CORPSE_GRAPHICS zombie-troll 4
--     [/variation]

--     [variation]
--         variation_id:"wose"
--         variation_name: _ "wc_variation^Wose"
--         inherit:"yes"
--         UNIT_BODY_WALKING_CORPSE_STATS    treefolk 3 26
--         UNIT_BODY_WALKING_CORPSE_GRAPHICS zombie-wose 4
--         movement_costs:
--             deep_water:3
--     [/variation]

--     [variation]
--         variation_id:"bat"
--         variation_name: _ "wc_variation^Bat"
--         inherit:"yes"
--         UNIT_BODY_WALKING_CORPSE_STATS fly 5 15
--         movement_costs:
--             cave:1
--             fungus:1
--         defense:
--             cave:50
--             fungus:50
--         resistance:
--             cold:70



--     [/variation]

--undef UNIT_BODY_WALKING_CORPSE_STATS
--undef UNIT_BODY_WALKING_CORPSE_GRAPHICS
