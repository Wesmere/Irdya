
-- Variant HP, MP, and MP types for the Soulless
UNIT_BODY_SOULLESS_STATS = (MOVETYPE_ID, MOVES_NUMBER, HP_AMOUNT, cfg) ->
    with cfg
        .hitpoints= HP_AMOUNT
        .movement_type= MOVETYPE_ID
        .movement= MOVES_NUMBER

-- Variant animations for the Soulless
--define UNIT_BODY_SOULLESS_GRAPHICS BASE_NAME DEATH_FRAMES_NUMBER
--enddef

unit_type UNIT_BODY_SOULLESS_STATS smallfoot, 4, 28,
    id:"Soulless"
    name: _ "Soulless"
    -- No profile variations for now
    race:"undead"
    trait: TRAIT_FEARLESS_MUSTHAVE
    experience:50
    level:1
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:13
    usage:"fighter"
    description: _ "The technique of animating a dead body is unfortunately well-known in the dark arts; practitioners often use it to raise servants and soldiers from unwilling corpses. These shamblers are often numerous, but fragile; a touch of combat can waken them, though, making them far more formidable." .. SPECIAL_NOTES .. SPECIAL_NOTES_PLAGUE

    attack:
        name:"touch"
        description:"_touch"
        type:"impact"
        range:"melee"
        damage:7
        number:3
        specials:
            WEAPON_SPECIAL_PLAGUE

    resistance:
        arcane:140
    movement_costs:
        deep_water:4
    defense:
        deep_water:90


    --UNIT_BODY_SOULLESS_GRAPHICS soulless 4

    -- variation:
    --     variation_id:"drake"
    --     variation_name: _ "wc_variation^Drake"
    --     inherit:"yes"
    --     UNIT_BODY_SOULLESS_STATS    drakefoot 4 36
    --     UNIT_BODY_SOULLESS_GRAPHICS soulless-drake 4
    --     movement_costs:
    --         unwalkable:4
    --     defense:
    --         unwalkable:90

    -- variation:
    --     variation_id:"dwarf"
    --     variation_name: _ "wc_variation^Dwarf"
    --     inherit:"yes"
    --     UNIT_BODY_SOULLESS_STATS    dwarvishfoot 3 33
    --     UNIT_BODY_SOULLESS_GRAPHICS soulless-dwarf 4
    --     movement_costs:
    --         deep_water:3

    -- variation:
    --     variation_id:"goblin"
    --     variation_name: _ "wc_variation^Goblin"
    --     inherit:"yes"
    --     UNIT_BODY_SOULLESS_STATS    smallfoot 4 23
    --     UNIT_BODY_SOULLESS_GRAPHICS soulless-goblin 4

    -- variation:
    --     variation_id:"mounted"
    --     variation_name: _ "wc_variation^Mounted"
    --     inherit:"yes"
    --     -- Default portrait is fine for Mounted
    --     UNIT_BODY_SOULLESS_STATS    mounted 5 33
    --     UNIT_BODY_SOULLESS_GRAPHICS soulless-mounted 4

    -- variation:
    --     variation_id:"gryphon"
    --     variation_name: _ "wc_variation^Gryphon"
    --     inherit:"yes"
    --     UNIT_BODY_SOULLESS_STATS    fly 5 33
    --     UNIT_BODY_SOULLESS_GRAPHICS soulless-drake 3
    --     defense:
    --         mountains:40

    -- variation:
    --     variation_id:"saurian"
    --     variation_name: _ "wc_variation^Saurian"
    --     inherit:"yes"
    --     UNIT_BODY_SOULLESS_STATS    lizard 4 25
    --     UNIT_BODY_SOULLESS_GRAPHICS soulless-saurian 4

    -- variation:
    --     variation_id:"swimmer"
    --     variation_name: _ "wc_variation^Swimmer"
    --     inherit:"yes"
    --     UNIT_BODY_SOULLESS_STATS    swimmer 4 28
    --     UNIT_BODY_SOULLESS_GRAPHICS soulless-swimmer 4
    --     movement_costs:
    --         forest:4
    --         hills:4

    -- variation: UNIT_BODY_SOULLESS_STATS largefoot, 4, 33
    --     variation_id:"troll"
    --     variation_name: _ "wc_variation^Troll"
    --     inherit:"yes"
    --     -- UNIT_BODY_SOULLESS_GRAPHICS soulless-troll 4

    -- variation: UNIT_BODY_SOULLESS_STATS "treefolk", 3, 40
    --     variation_id:"wose"
    --     variation_name: _ "wc_variation^Wose"
    --     inherit:"yes"
    --     -- UNIT_BODY_SOULLESS_GRAPHICS soulless-wose 4
    --     movement_costs:
    --         deep_water:3

    -- variation: UNIT_BODY_SOULLESS_STATS "fly", 5, 24
    --     variation_id:"bat"
    --     variation_name: _ "wc_variation^Bat"
    --     inherit:"yes"
    --     movement_costs:
    --         cave:1
    --         fungus:1
    --     defense:
    --         cave:50
    --         fungus:50
    --     resistance:
    --         cold:70
