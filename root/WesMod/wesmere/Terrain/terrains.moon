
terrain_type
    id: "deep_water_gray"
    name: _ "Deep Water"
    editor_name: _ "Gray Deep Water"
    string: "Wog"
    aliasof: "Wdt"
    submerge: 0.5
    editor_group: "water"


terrain_type
    id: "deep_water_medium"
    name: _ "Deep Water"
    editor_name: _ "Medium Deep Water"
    string: "Wo"
    aliasof: "Wdt"
    submerge: 0.5
    editor_group: "water"


terrain_type
    id: "deep_water_tropical"
    name: _ "Deep Water"
    editor_name: _ "Tropical Deep Water"
    string: "Wot"
    aliasof: "Wdt"
    submerge: 0.5
    editor_group: "water"


terrain_type
    id: "gray_tropical_water"
    name: _ "Shallow Water"
    editor_name: _ "Gray Shallow Water"
    string: "Wwg"
    aliasof: "Wst"
    submerge: 0.4
    editor_group: "water"


terrain_type
    id: "medium_shallow_water"
    name: _ "Shallow Water"
    editor_name: _ "Medium Shallow Water"
    string: "Ww"
    aliasof: "Wst"
    submerge: 0.4
    editor_group: "water"


terrain_type
    id: "tropical_water"
    name: _ "Shallow Water"
    editor_name: _ "Tropical Shallow Water"
    string: "Wwt"
    aliasof: "Wst"
    submerge: 0.4
    editor_group: "water"


terrain_type
    id: "ford"
    name: _ "Ford"
    editor_name: _ "Ford"
    string: "Wwf"
    aliasof: "Gt, Wst"
    submerge: 0.3
    editor_group: "water"
    help_topic_text: _ "When a river happens to be extremely shallow, passing over it is a trivial matter for land based units. Moreover, any creature best adapted to swimming has full mobility even at such places in the river. As far as gameplay is concerned, a river ford is treated as either grassland or shallow water, choosing whichever one offers the best defensive and movement bonuses for the unit on it."


terrain_type
    id: "gray_reef"
    name: _ "Coastal Reef"
    editor_name: _ "Gray Coastal Reef"
    string: "Wwrg"
    aliasof: "Wrt"
    submerge: 0.3
    editor_group: "water"


terrain_type
    id: "medium_reef"
    name: _ "Coastal Reef"
    editor_name: _ "Medium Coastal Reef"
    aliasof: "Wrt"
    string: "Wwr"
    submerge: 0.3
    editor_group: "water"


terrain_type
    id: "tropical_reef"
    name: _ "Coastal Reef"
    editor_name: _ "Tropical Coastal Reef"
    string: "Wwrt"
    aliasof: "Wrt"
    submerge: 0.3
    editor_group: "water"


terrain_type
    id: "swamp_water_reed"
    name: _ "Swamp"
    editor_name: _ "Swamp Water Reed"
    aliasof: "St"
    string: "Ss"
    submerge: 0.4
    editor_group: "water"


terrain_type
    id: "quagmire"
    name: _ "Swamp"
    editor_name: _ "Muddy Quagmire"
    string: "Sm"
    aliasof: "St"
    submerge: 0.4
    editor_group: "water"


terrain_type
    editor_image: "grass/green"
    id: "grassland"
    name: _ "Grassland"
    editor_name: _ "Green Grass"
    string: "Gg"
    aliasof: "Gt"
    editor_group: "flat"


terrain_type
    id: "savanna"
    name: _ "Grassland"
    editor_name: _ "Semi-dry Grass"
    string: "Gs"
    aliasof: "Gt"
    editor_group: "flat"


terrain_type
    editor_image: "grass/dry"
    id: "grass_dry"
    name: _ "Grassland"
    editor_name: _ "Dry Grass"
    string: "Gd"
    aliasof: "Gt"
    editor_group: "flat"


terrain_type
    id: "leaf_litter"
    name: _ "Grassland"
    editor_name: _ "Leaf Litter"
    string: "Gll"
    aliasof: "Gt"
    editor_group: "flat,fall"


terrain_type
    id: "dirt_dark"
    name: _ "Dirt"
    editor_name: _ "Dark Dirt"
    string: "Rb"
    aliasof: "Gt"
    editor_group: "flat"


terrain_type
    id: "dirt"
    name: _ "Dirt"
    editor_name: _ "Regular Dirt"
    string: "Re"
    aliasof: "Gt"
    editor_group: "flat"


terrain_type
    id: "dirt_dry"
    name: _ "Dirt"
    editor_name: _ "Dry Dirt"
    string: "Rd"
    aliasof: "Gt"
    editor_group: "desert, flat"


terrain_type
    id: "road"
    name: _ "Road"
    editor_name: _ "Regular Cobbles"
    string: "Rr"
    aliasof: "Gt"
    editor_group: "flat"
    help_topic_text: _ "<italic>text='Roads'</italic> are beaten paths of dirt, formed by many travelers passing over them. As far as gameplay is concerned, roads behave as flat terrain."


terrain_type
    id: "road_clean"
    name: _ "Road"
    editor_name: _ "Clean Gray Cobbles"
    string: "Rrc"
    aliasof: "Gt"
    editor_group: "flat"


terrain_type
    id: "stone_path"
    name: _ "Road"
    editor_name: _ "Overgrown Cobbles"
    string: "Rp"
    aliasof: "Gt"
    editor_group: "flat"


terrain_type
    id: "ice"
    name: _ "Ice"
    string: "Ai"
    aliasof: "At"
    editor_group: "frozen"


terrain_type
    id: "snow"
    name: _ "Snow"
    string: "Aa"
    aliasof: "At"
    editor_group: "frozen"


terrain_type
    id: "desert"
    name: _ "Desert"
    editor_name: _ "Desert Sands"
    string: "Dd"
    aliasof: "Dt"
    editor_group: "desert"
    help_topic_text: _ "<italic>text='Deserts'</italic> have a somewhat different composition than small sand pits or beaches, however for gameplay purposes they are identical. See <ref>dst='terrain_sand' text='sand'</ref>."


terrain_type
    id: "sand_beach"
    name: _ "Sand"
    editor_name: _ "Beach Sands"
    string: "Ds"
    aliasof: "Dt"
    editor_group: "desert"
    help_topic_text: _ [[The instability of <italic>text='sand'</italic> makes it harder for most units to cross, and leaves them wide open to attack. In contrast, the wide feet or snakelike bodies of the reptilian races make sand much easier for them to navigate.

Most units receive 20 to 40% defense in sand.]]


terrain_type
    id: "oasis"
    name: _ "Oasis"
    default_base: "Dd"
    string: "^Do"
    aliasof: "_bas"
    heals: 8
    editor_group: "desert, forest"


terrain_type
    id: "sand_rubble"
    name: _ "Rubble"
    string: "^Dr"
    aliasof: "_bas, Ht"
    mvt_alias: "-,_bas,Ht"
    editor_group: "desert, rough"


terrain_type
    id: "crater"
    name: _ "Crater"
    string: "Dd^Dc"
    default_base: "Dd"
    aliasof: "Dt"
    editor_group: "desert"


terrain_type
    id: "flowers_mixed"
    editor_name: _ "Mixed Flowers"
    string: "^Efm"
    aliasof: "_bas"
    editor_group: "embellishments"


terrain_type
    id: "farm"
    name: _ "Farmland"
    string: "^Gvs"
    aliasof: "_bas"
    editor_group: "embellishments"


terrain_type
    id: "stones_small"
    editor_name: _ "Stones"
    string: "^Es"
    aliasof: "_bas"
    editor_group: "embellishments"


terrain_type
    id: "mushrooms_small"
    editor_name: _ "Small Mushrooms"
    string: "^Em"
    aliasof: "_bas"
    editor_group: "embellishments"


terrain_type
    id: "mushrooms_farm"
    editor_name: _ "Mushroom Farm"
    string: "^Emf"
    aliasof: "_bas"
    editor_group: "embellishments,cave"


terrain_type
    id: "desert_plants"
    editor_name: _ "Desert Plants"
    string: "^Edp"
    aliasof: "_bas"
    editor_group: "embellishments, desert"


terrain_type
    id: "desert_plants_sans_bones"
    editor_name: _ "Desert Plants without Bones"
    string: "^Edpp"
    aliasof: "_bas"
    editor_group: "embellishments, desert"


terrain_type
    id: "windmill"
    editor_name: _ "Windmill"
    string: "^Wm"
    aliasof: "_bas"
    editor_group: "embellishments"


terrain_type
    id: "campfire"
    editor_name: _ "Campfire"
    string: "^Ecf"
    aliasof: "_bas"
    editor_group: "embellishments"


terrain_type
    id: "brazier"
    editor_name: _ "Brazier"
    string: "^Eb"
    aliasof: "_bas"
    editor_group: "embellishments"


terrain_type
    id: "brazier-lit"
    editor_name: _ "Lit Brazier"
    string: "^Ebn"
    aliasof: "_bas"
    editor_group: "embellishments"


terrain_type
    id: "fence"
    editor_name: _ "Fence"
    string: "^Eff"
    aliasof: "_bas"
    editor_group: "embellishments"


terrain_type
    id: "sand_drifts"
    editor_name: _ "Stones with Sand Drifts"
    string: "^Esd"
    aliasof: "_bas"
    editor_group: "embellishments, desert"


terrain_type
    id: "water-lilies"
    editor_name: _ "Water Lilies"
    string: "^Ewl"
    default_base: "Ww"
    aliasof: "_bas"
    editor_group: "water,embellishments"


terrain_type
    id: "water-lilies-flower"
    editor_name: _ "Flowering Water Lilies"
    string: "^Ewf"
    default_base: "Ww"
    aliasof: "_bas"
    editor_group: "water,embellishments"


terrain_type
    id: "detritus_trash"
    name: _ "Trash"
    string: "^Edt"
    aliasof: "_bas"
    editor_group: "embellishments"


terrain_type
    id: "detritus_bones"
    name: _ "Remains"
    string: "^Edb"
    aliasof: "_bas"
    editor_group: "embellishments"


terrain_type
    id: "great_tree"
    name: _ "Great Tree"
    editor_name: _ "Great Tree"
    string: "^Fet"
    default_base: "Gg"
    aliasof: "_bas,Ft"
    mvt_alias: "-,_bas,Ft"
    editor_group: "forest"


terrain_type
    id: "great_tree_dead"
    name: _ "Great Tree"
    editor_name: _ "Dead Great Tree"
    string: "^Fetd"
    default_base: "Gd"
    aliasof: "_bas,Ft"
    mvt_alias: "-,_bas,Ft"
    editor_group: "forest"


terrain_type
    id: "tropical_forest"
    name: _ "Forest"
    editor_name: _ "Tropical Forest"
    string: "^Ft"
    default_base: "Gs"
    aliasof: "_bas,Ft"
    mvt_alias: "-,_bas,Ft"
    editor_group: "forest"


terrain_type
    id: "rainforest"
    name: _ "Forest"
    editor_name: _ "Rainforest"
    string: "^Ftr"
    default_base: "Gll"
    aliasof: "_bas,Ft"
    mvt_alias: "-,_bas,Ft"
    editor_group: "forest"


terrain_type
    id: "palm_desert_forest"
    name: _ "Forest"
    editor_name: _ "Palm Forest"
    string: "^Ftd"
    default_base: "Dd"
    aliasof: "_bas,Ft"
    mvt_alias: "-,_bas,Ft"
    editor_group: "forest,desert"


terrain_type
    id: "palm_forest"
    name: _ "Forest"
    editor_name: _ "Dense Palm Forest"
    string: "^Ftp"
    default_base: "Gs"
    aliasof: "_bas,Ft"
    mvt_alias: "-,_bas,Ft"
    editor_group: "forest"


terrain_type
    id: "savanna_forest"
    name: _ "Forest"
    editor_name: _ "Savanna"
    string: "^Fts"
    default_base: "Gd"
    aliasof: "_bas,Ft"
    mvt_alias: "-,_bas,Ft"
    editor_group: "forest,desert"


terrain_type
    id: "pine_forest"
    name: _ "Forest"
    editor_name: _ "Pine Forest"
    string: "^Fp"
    aliasof: "_bas,Ft"
    mvt_alias: "-,_bas,Ft"
    default_base: "Gll"
    editor_group: "forest"


terrain_type
    id: "snow_forest"
    name: _ "Forest"
    editor_name: _ "Snowy Pine Forest"
    string: "^Fpa"
    default_base: "Aa"
    aliasof: "_bas,At,Ft"
    mvt_alias: "-,_bas,At,Ft"
    editor_group: "frozen, forest"


terrain_type
    id: "deciduous_forest_summer"
    name: _ "Forest"
    editor_name: _ "Summer Deciduous Forest"
    string: "^Fds"
    default_base: "Gs"
    aliasof: "_bas,Ft"
    mvt_alias: "-,_bas,Ft"
    editor_group: "forest"


terrain_type
    id: "deciduous_forest_fall"
    name: _ "Forest"
    editor_name: _ "Fall Deciduous Forest"
    string: "^Fdf"
    default_base: "Gll"
    aliasof: "_bas,Ft"
    mvt_alias: "-,_bas,Ft"
    editor_group: "forest, fall"


terrain_type
    id: "deciduous_forest_winter"
    name: _ "Forest"
    editor_name: _ "Winter Deciduous Forest"
    string: "^Fdw"
    default_base: "Gll"
    aliasof: "_bas,Ft"
    mvt_alias: "-,_bas,Ft"
    editor_group: "forest, fall"


terrain_type
    id: "deciduous_forest_winter_snow"
    name: _ "Forest"
    editor_name: _ "Snowy Deciduous Forest"
    string: "^Fda"
    default_base: "Aa"
    aliasof: "_bas,At,Ft"
    mvt_alias: "-,_bas,At,Ft"
    editor_group: "frozen, forest"


terrain_type
    id: "mixed_forest_summer"
    name: _ "Forest"
    editor_name: _ "Summer Mixed Forest"
    string: "^Fms"
    default_base: "Gs"
    aliasof: "_bas,Ft"
    mvt_alias: "-,_bas,Ft"
    editor_group: "forest"


terrain_type
    id: "mixed_forest_fall"
    name: _ "Forest"
    editor_name: _ "Fall Mixed Forest"
    string: "^Fmf"
    default_base: "Gll"
    aliasof: "_bas,Ft"
    mvt_alias: "-,_bas,Ft"
    editor_group: "forest, fall"


terrain_type
    id: "mixed_forest_winter"
    name: _ "Forest"
    editor_name: _ "Winter Mixed Forest"
    string: "^Fmw"
    default_base: "Gll"
    aliasof: "_bas,Ft"
    mvt_alias: "-,_bas,Ft"
    editor_group: "forest, fall"


terrain_type
    id: "mixed_forest_winter_snow"
    name: _ "Forest"
    editor_name: _ "Snowy Mixed Forest"
    string: "^Fma"
    default_base: "Aa"
    aliasof: "_bas,At,Ft"
    mvt_alias: "-,_bas,At,Ft"
    editor_group: "frozen, forest"


terrain_type
    id: "hills_regular"
    name: _ "Hills"
    editor_name: _ "Regular Hills"
    aliasof: "Ht"
    string: "Hh"
    editor_group: "rough"


terrain_type
    id: "hills_dry"
    name: _ "Hills"
    editor_name: _ "Dry Hills"
    string: "Hhd"
    aliasof: "Ht"
    editor_group: "fall, rough"


terrain_type
    id: "desert_hills"
    name: _ "Dunes"
    string: "Hd"
    aliasof: "Dt, Ht"
    mvt_alias: "-,Dt,Ht"
    editor_group: "desert, rough"


terrain_type
    id: "snow_hills"
    name: _ "Hills"
    editor_name: _ "Snow Hills"
    string: "Ha"
    aliasof: "At, Ht"
    mvt_alias: "-,At, Ht"
    editor_group: "frozen, rough"


terrain_type
    id: "regular_mountains"
    name: _ "Mountains"
    editor_name: _ "Regular Mountains"
    string: "Mm"
    aliasof: "Mt"
    editor_group: "rough"


terrain_type
    id: "desert_mountains"
    name: _ "Mountains"
    editor_name: _ "Dry Mountains"
    string: "Md"
    aliasof: "Mt"
    editor_group: "rough, desert"


terrain_type
    id: "snow_mountains"
    name: _ "Mountains"
    editor_name: _ "Snowy Mountains"
    string: "Ms"
    aliasof: "At, Mt"
    mvt_alias: "-,At, Mt"
    editor_group: "rough, frozen"


terrain_type
    id: "wooden_floor"
    name: _ "Wooden Floor"
    editor_name: _ "Basic Wooden Floor"
    string: "Iwr"
    aliasof: "Gt"
    editor_group: "flat"


terrain_type
    id: "lit"
    name: _ "Lit"
    editor_name: _ "Beam of Light"
    string: "^Ii"
    aliasof: "_bas"
    light: 25
    editor_group: "cave"


terrain_type
    id: "cave_floor"
    name: _ "Cave"
    editor_name: _ "Cave Floor"
    aliasof: "Ut"
    string: "Uu"
    editor_group: "cave"


terrain_type
    id: "cave_earthy"
    name: _ "Cave"
    editor_name: _ "Earthy Cave Floor"
    string: "Uue"
    aliasof: "Ut"
    editor_group: "cave"


terrain_type
    id: "flagstones_dark"
    name: _ "Road"
    editor_name: _ "Dark Flagstones"
    string: "Urb"
    editor_group: "cave, flat"
    aliasof: "Gt"


terrain_type
    id: "cave_path"
    name: _ "Road"
    editor_name: _ "Cave Path"
    string: "Ur"
    aliasof: "Gt"
    editor_group: "cave, flat"


terrain_type
    id: "fungus_grove"
    name: _ "Mushroom Grove"
    editor_name: _ "Mushroom Grove"
    string: "^Uf"
    aliasof: "Uft"
    default_base: "Uu"
    editor_group: "cave, forest"


terrain_type
    id: "fungus_beam"
    name: _ "Mushroom Grove"
    editor_name: _ "Lit Mushroom Grove"
    string: "^Ufi"
    default_base: "Uu"
    aliasof: "Uft"
    light: 25
    editor_group: "cave"


terrain_type
    id: "rocky_cave"
    name: _ "Rockbound Cave"
    editor_name: _ "Rockbound Cave"
    string: "Uh"
    aliasof: "Ut, Ht"
    mvt_alias: "-,Ut, Ht"
    editor_group: "cave, rough"
    help_topic_text: _ [[<italic>text='Rockbound cave'</italic> terrain is formed by the action of water and wind, carrying erosive particles that carve the rock. It resembles a scraggy underground cavern which reduces efficiency of most units, but shoulders defense. Dwarves and trolls, who are main settlers of caves, have a relatively easy time navigating this terrain. Dwarves, who by dint of their small size have the full advantage of navigation in such topography. Occasionally caves are <ref>dst='terrain_illuminated_cave' text='illuminated'</ref>

Most units have about 50% defense in rocky caves, whereas cavalry are limited to 40%. Dwarves enjoy 60% defense in rockbound caves.]]


terrain_type
    id: "mine_rails"
    name: _ "Mine Rail"
    string: "^Br|"
    aliasof: "_bas,Rt"
    mvt_alias: "Gt,Rt"
    submerge: 0
    unit_height_adjust: 22
    editor_group: "cave"


terrain_type
    id: "mine_railsdiag1"
    name: _ "Mine Rail"
    string: "^Br/"
    aliasof: "_bas,Rt"
    mvt_alias: "Gt,Rt"
    submerge: 0
    unit_height_adjust: 22
    editor_group: "cave"
    hide_help: "yes"


terrain_type
    id: "mine_railsdiag2"
    name: _ "Mine Rail"
    string: "^Br\\"
    aliasof: "_bas,Rt"
    mvt_alias: "Gt,Rt"
    submerge: 0
    unit_height_adjust: 22
    editor_group: "cave"
    hide_help: "yes"


terrain_type
    editor_image: "chasm/regular-tile"
    id: "canyon"
    name: _ "Chasm"
    editor_name: _ "Regular Chasm"
    string: "Qxu"
    aliasof: "Qt"
    editor_group: "cave, obstacle"


terrain_type
    editor_image: "chasm/earthy-tile"
    id: "chasm_earthy"
    name: _ "Chasm"
    editor_name: _ "Earthy Chasm"
    string: "Qxe"
    aliasof: "Qt"
    editor_group: "cave, obstacle"


terrain_type
    editor_image: "chasm/abyss-tile"
    id: "abyss"
    name: _ "Chasm"
    editor_name: _ "Ethereal Abyss"
    string: "Qxua"
    aliasof: "Qt"
    editor_group: "cave, obstacle"


terrain_type
    editor_image: "unwalkable/lava-chasm-tile"
    id: "lava_chasm"
    name: _ "Chasm"
    editor_name: _ "Lava Chasm"
    string: "Ql"
    aliasof: "Qt"
    light: 25
    max_light: 35
    editor_group: "cave, obstacle"


terrain_type
    id: "lava"
    name: _ "Lava"
    editor_name: _ "Lava"
    string: "Qlf"
    aliasof: "Qt"
    light: 25
    max_light: 35
    editor_group: "cave, obstacle"
    help_topic_text: _ "The dangers inherent in trying to walk on <italic>text='lava'</italic> are fairly obvious. As far as movement is concerned, lava is equivalent to <ref>dst='terrain_unwalkable' text='unwalkable'</ref> terrain, and can only be crossed by those units capable of flying a considerable distance above it. The molten magma also produces a substantial glow, illuminating the area immediately above it. This provides an attack bonus for lawful units and removes the attack bonus from chaotic units."


terrain_type
    editor_image: "mountains/volcano-tile"
    id: "volcano"
    name: _ "Volcano"
    string: "Mv"
    aliasof: "Qt"
    light: 25
    max_light: 35
    editor_group: "rough, obstacle"


terrain_type
    id: "cloud"
    name: _ "Mountains"
    editor_name: _ "Regular Impassable Mountains"
    string: "Mm^Xm"
    aliasof: "-,Mt,Xt"
    editor_group: "rough,obstacle"


terrain_type
    id: "clouddesert"
    name: _ "Mountains"
    editor_name: _ "Desert Impassable Mountains"
    string: "Md^Xm"
    aliasof: "-,Mt,Xt"
    editor_group: "rough,obstacle,desert"


terrain_type
    id: "cloud_snow"
    name: _ "Mountains"
    editor_name: _ "Snowy Impassable Mountains"
    string: "Ms^Xm"
    aliasof: "-,Mt,Xt"
    editor_group: "rough,obstacle,frozen"


terrain_type
    editor_image: "cave/wall-rough-tile"
    id: "cavewall"
    name: _ "Cave Wall"
    editor_name: _ "Natural Cave Wall"
    string: "Xu"
    aliasof: "Xt"
    editor_group: "cave,obstacle"


terrain_type
    editor_image: "cave/wall-hewn-tile"
    id: "cavewall_hewn"
    name: _ "Cave Wall"
    editor_name: _ "Hewn Cave Wall"
    string: "Xuc"
    aliasof: "Xt"
    editor_group: "cave,obstacle"


terrain_type
    editor_image: "cave/earthy-wall-rough-tile"
    id: "cavewall_earthy"
    name: _ "Cave Wall"
    editor_name: _ "Natural Earthy Cave Wall"
    string: "Xue"
    aliasof: "Xt"
    editor_group: "cave,obstacle"


terrain_type
    editor_image: "cave/earthy-wall-hewn-tile"
    id: "cavewall_earthy_hewn"
    name: _ "Cave Wall"
    editor_name: _ "Reinforced Earthy Cave Wall"
    string: "Xuce"
    aliasof: "Xt"
    editor_group: "cave,obstacle"


terrain_type
    editor_image: "walls/wall-stone-tile"
    id: "wall_stone"
    name: _ "Stone Wall"
    string: "Xos"
    aliasof: "Xt"
    editor_group: "cave,obstacle"


terrain_type
    editor_image: "walls/wall-stone-lit-tile"
    id: "wall_stone_lit"
    name: _ "Stone Wall"
    editor_name: _ "Lit Stone Wall"
    string: "Xol"
    aliasof: "Xt"
    editor_group: "cave,obstacle"


terrain_type
    editor_image: "impassable-editor"
    id: "impassable_overlay"
    editor_name: _ "Impassable Overlay"
    string: "^Xo"
    aliasof: "_bas,Xt"
    mvt_alias: "Xt"
    editor_group: "obstacle, special"
    hide_help: "yes"


terrain_type
    editor_image: "unwalkable-editor"
    id: "unwalkable_overlay"
    editor_name: _ "Unwalkable Overlay"
    string: "^Qov"
    aliasof: "_bas,Qt"
    mvt_alias: "Qt"
    editor_group: "obstacle, special"
    hide_help: "yes"


terrain_type
    editor_image: "void/void-editor"
    id: "void"
    name: _ "Void"
    string: "Xv"
    aliasof: "Xt"
    editor_group: "obstacle, special"
    hide_help: "yes"


terrain_type
    id: "desert_village"
    name: _ "Village"
    editor_name: _ "Adobe Village"
    string: "^Vda"
    aliasof: "_bas, Vt"
    default_base: "Dd"
    heals: 8
    gives_income: "true"
    editor_group: "village, desert"


terrain_type
    id: "desert_village_tent"
    name: _ "Village"
    editor_name: _ "Desert Tent Village"
    string: "^Vdt"
    aliasof: "_bas, Vt"
    default_base: "Dd"
    heals: 8
    gives_income: "true"
    editor_group: "village, desert"


terrain_type
    id: "camp_village"
    name: _ "Village"
    editor_name: _ "Tent Village"
    string: "^Vct"
    aliasof: "_bas, Vt"
    default_base: "Re"
    heals: 8
    gives_income: "true"
    editor_group: "village"


terrain_type
    id: "orcish_village"
    name: _ "Village"
    editor_name: _ "Orcish Village"
    string: "^Vo"
    aliasof: "_bas, Vt"
    default_base: "Gd"
    heals: 8
    gives_income: "true"
    editor_group: "village"


terrain_type
    id: "orcish_snow_village"
    name: _ "Village"
    editor_name: _ "Snowy Orcish Village"
    string: "^Voa"
    aliasof: "_bas, Vt"
    default_base: "Aa"
    heals: 8
    gives_income: "true"
    editor_group: "village, frozen"


terrain_type
    id: "elven_snow_village"
    name: _ "Village"
    editor_name: _ "Snowy Elven Village"
    string: "^Vea"
    aliasof: "_bas, Vt"
    default_base: "Aa"
    heals: 8
    gives_income: "true"
    editor_group: "village, frozen"


terrain_type
    id: "elven_village"
    name: _ "Village"
    editor_name: _ "Elven Village"
    string: "^Ve"
    aliasof: "_bas, Vt"
    default_base: "Gg"
    heals: 8
    gives_income: "true"
    editor_group: "village"


terrain_type
    id: "human_village"
    name: _ "Village"
    editor_name: _ "Cottage"
    string: "^Vh"
    aliasof: "_bas, Vt"
    default_base: "Gs"
    heals: 8
    gives_income: "true"
    editor_group: "village"


terrain_type
    id: "snow_village"
    name: _ "Village"
    editor_name: _ "Snowy Cottage"
    string: "^Vha"
    aliasof: "_bas, Vt"
    default_base: "Aa"
    heals: 8
    gives_income: "true"
    editor_group: "village, frozen"


terrain_type
    id: "human_village_ruin"
    name: _ "Village"
    editor_name: _ "Ruined Cottage"
    string: "^Vhr"
    aliasof: "_bas, Vt"
    default_base: "Gd"
    heals: 8
    gives_income: "true"
    editor_group: "village"


terrain_type
    id: "city_village"
    name: _ "Village"
    editor_name: _ "Human City"
    string: "^Vhc"
    aliasof: "_bas, Vt"
    default_base: "Rr"
    heals: 8
    gives_income: "true"
    editor_group: "village"


terrain_type
    id: "windmill_village"
    name: _ "Village"
    editor_name: _ "Windmill Village"
    string: "^Vwm"
    aliasof: "_bas, Vt"
    default_base: "Gg"
    heals: 8
    gives_income: "true"
    editor_group: "village"


terrain_type
    id: "city_village_wno"
    name: _ "Village"
    editor_name: _ "Snowy Human City"
    string: "^Vhca"
    aliasof: "_bas, Vt"
    default_base: "Rrc"
    heals: 8
    gives_income: "true"
    editor_group: "village, frozen"


terrain_type
    id: "city_village_ruin"
    name: _ "Village"
    editor_name: _ "Ruined Human City"
    string: "^Vhcr"
    aliasof: "_bas, Vt"
    default_base: "Rp"
    heals: 8
    gives_income: "true"
    editor_group: "village"


terrain_type
    id: "hill_village"
    name: _ "Village"
    editor_name: _ "Hill Stone Village"
    string: "^Vhh"
    aliasof: "_bas, Vt"
    default_base: "Hh"
    heals: 8
    gives_income: "true"
    editor_group: "village, rough"


terrain_type
    id: "snow-hill_village"
    name: _ "Village"
    editor_name: _ "Snowy Hill Stone Village"
    string: "^Vhha"
    aliasof: "_bas, Vt"
    default_base: "Ha"
    heals: 8
    gives_income: "true"
    editor_group: "village, frozen, rough"


terrain_type
    id: "hill_village_ruin"
    name: _ "Village"
    editor_name: _ "Ruined Hill Stone Village"
    string: "^Vhhr"
    aliasof: "_bas, Vt"
    default_base: "Hhd"
    heals: 8
    gives_income: "true"
    editor_group: "village, rough"


terrain_type
    id: "tropical_forest_village"
    name: _ "Village"
    editor_name: _ "Tropical Village"
    string: "^Vht"
    aliasof: "_bas, Vt"
    default_base: "Gs"
    heals: 8
    gives_income: "true"
    editor_group: "village"


terrain_type
    id: "drake_village"
    name: _ "Village"
    editor_name: _ "Drake Village"
    string: "^Vd"
    aliasof: "_bas, Vt"
    default_base: "Rr"
    heals: 8
    gives_income: "true"
    editor_group: "village"


terrain_type
    id: "underground_village"
    name: _ "Village"
    editor_name: _ "Cave Village"
    string: "^Vu"
    aliasof: "_bas, Vt"
    default_base: "Uu"
    heals: 8
    gives_income: "true"
    editor_group: "village, cave"


terrain_type
    id: "dwarven_village"
    name: _ "Village"
    editor_name: _ "Dwarven Village"
    string: "^Vud"
    aliasof: "_bas, Vt"
    default_base: "Uu"
    heals: 8
    gives_income: "true"
    editor_group: "village, cave"


terrain_type
    id: "hut_village"
    name: _ "Village"
    editor_name: _ "Hut"
    string: "^Vc"
    aliasof: "_bas, Vt"
    default_base: "Gs"
    heals: 8
    gives_income: "true"
    editor_group: "village"


terrain_type
    id: "hut_snow_village"
    name: _ "Village"
    editor_name: _ "Snowy Hut"
    string: "^Vca"
    aliasof: "_bas, Vt"
    default_base: "Aa"
    heals: 8
    gives_income: "true"
    editor_group: "village, frozen"


terrain_type
    id: "logcabin_village"
    name: _ "Village"
    editor_name: _ "Log Cabin"
    string: "^Vl"
    aliasof: "_bas, Vt"
    default_base: "Gs"
    heals: 8
    gives_income: "true"
    editor_group: "village"


terrain_type
    id: "logcabin_snow_village"
    name: _ "Village"
    editor_name: _ "Snowy Log Cabin"
    string: "^Vla"
    aliasof: "_bas, Vt"
    default_base: "Aa"
    heals: 8
    gives_income: "true"
    editor_group: "village, frozen"


terrain_type
    id: "igloo"
    name: _ "Village"
    editor_name: _ "Igloo"
    string: "^Vaa"
    aliasof: "_bas, Vt"
    default_base: "Aa"
    heals: 8
    gives_income: "true"
    editor_group: "village, frozen"


terrain_type
    id: "swamp_village"
    name: _ "Village"
    editor_name: _ "Swamp Village"
    string: "^Vhs"
    aliasof: "_bas, Vt"
    default_base: "Ss"
    heals: 8
    gives_income: "true"
    editor_group: "water, village"


terrain_type
    id: "mermen-village"
    name: _ "Village"
    editor_name: _ "Merfolk Village"
    help_topic_text: _ [[<italic>text='Submerged villages'</italic> are the homes of merfolk and nagas. While water-dwelling creatures are at home here, land-dwellers have a hard time navigating and defending these villages. However, like any village, the facilities are available to all creatures which allow units to tend to their wounds. Any unit stationed in a village can heal eight hitpoints each turn, or be cured of poison.

Merfolk and nagas have 60% defense in submerged villages, whereas land based units usually have a low defense.]]
    string: "^Vm"
    aliasof: "_bas"
    default_base: "Ww"
    submerge: 0.4
    heals: 8
    gives_income: "true"
    editor_group: "water, village"


terrain_type
    editor_image: "village/village-overlay-editor"
    id: "village_overlay"
    name: _ "Village"
    editor_name: _ "Village Overlay"
    string: "^Vov"
    aliasof: "_bas"
    heals: 8
    gives_income: "true"
    editor_group: "village, special"
    hide_help: "yes"


terrain_type
    id: "encampment"
    name: _ "Encampment"
    editor_name: _ "Encampment"
    string: "Ce"
    aliasof: "Ct"
    unit_height_adjust: 3
    recruit_onto: "true"
    editor_group: "castle"


terrain_type
    id: "encampment_snow"
    name: _ "Encampment"
    editor_name: _ "Snowy Encampment"
    string: "Cea"
    aliasof: "Ct, At"
    unit_height_adjust: 3
    recruit_onto: "true"
    editor_group: "castle, frozen"


terrain_type
    id: "orcish_fort"
    name: _ "Castle"
    editor_name: _ "Orcish Castle"
    string: "Co"
    aliasof: "Ct"
    unit_height_adjust: 3
    recruit_onto: "true"
    editor_group: "castle"


terrain_type
    id: "snow_orcish_fort"
    name: _ "Castle"
    editor_name: _ "Snowy Orcish Castle"
    string: "Coa"
    aliasof: "Ct, At"
    unit_height_adjust: 3
    recruit_onto: "true"
    editor_group: "castle, frozen"


terrain_type
    id: "human_castle"
    name: _ "Castle"
    editor_name: _ "Human Castle"
    string: "Ch"
    aliasof: "Ct"
    unit_height_adjust: 3
    recruit_onto: "true"
    editor_group: "castle"


terrain_type
    id: "snow_castle"
    name: _ "Castle"
    editor_name: _ "Snowy Human Castle"
    string: "Cha"
    aliasof: "Ct, At"
    recruit_onto: "true"
    editor_group: "castle, frozen"


terrain_type
    id: "elven_castle"
    name: _ "Castle"
    editor_name: _ "Elven Castle"
    string: "Cv"
    aliasof: "Ct"
    unit_height_adjust: 3
    recruit_onto: "true"
    editor_group: "castle"


terrain_type
    id: "dwarven_castle"
    name: _ "Castle"
    editor_name: _ "Dwarven Castle"
    string: "Cud"
    aliasof: "Ct"
    unit_height_adjust: 0
    recruit_onto: "true"
    editor_group: "castle, cave"


terrain_type
    id: "ruin"
    name: _ "Ruined Castle"
    editor_name: _ "Ruined Human Castle"
    string: "Chr"
    aliasof: "Ct"
    unit_height_adjust: 3
    recruit_onto: "true"
    editor_group: "castle"


terrain_type
    id: "sunkenruin"
    name: _ "Ruined Castle"
    editor_name: _ "Sunken Human Ruin"
    string: "Chw"
    aliasof: "Ct, Wst"
    submerge: 0.4
    unit_height_adjust: 3
    recruit_onto: "true"
    editor_group: "castle, water"


terrain_type
    id: "swampruin"
    name: _ "Ruined Castle"
    editor_name: _ "Swamp Human Ruin"
    string: "Chs"
    aliasof: "Ct, St"
    submerge: 0.4
    unit_height_adjust: 3
    recruit_onto: "true"
    editor_group: "castle, water"


terrain_type
    id: "sand_castle"
    name: _ "Castle"
    editor_name: _ "Desert Castle"
    string: "Cd"
    aliasof: "Ct"
    unit_height_adjust: 3
    recruit_onto: "true"
    editor_group: "castle, desert"


terrain_type
    id: "sand_castle_ruin"
    name: _ "Ruined Castle"
    editor_name: _ "Ruined Desert Castle"
    string: "Cdr"
    aliasof: "Ct"
    unit_height_adjust: 3
    recruit_onto: "true"
    editor_group: "castle, desert"


terrain_type
    id: "encampment_keep"
    name: _ "Encampment Keep"
    string: "Ke"
    aliasof: "Ct"
    unit_height_adjust: 0
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle"


terrain_type
    id: "encampment_keep_tall"
    name: _ "Encampment Keep"
    editor_name: _ "Tall Encampment Keep"
    string: "Ket"
    aliasof: "Ct"
    unit_height_adjust: 17
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle"


terrain_type
    id: "encampment_snow_keep"
    name: _ "Encampment Keep"
    editor_name: _ "Snowy Encampment Keep"
    string: "Kea"
    aliasof: "Ct, At"
    unit_height_adjust: 0
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle, frozen"


terrain_type
    id: "orcish_keep"
    name: _ "Keep"
    editor_name: _ "Orcish Keep"
    string: "Ko"
    aliasof: "Ct"
    unit_height_adjust: 17
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle"


terrain_type
    id: "snow_orcish_keep"
    name: _ "Keep"
    editor_name: _ "Snowy Orcish Keep"
    string: "Koa"
    aliasof: "Ct, At"
    unit_height_adjust: 17
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle, frozen"


terrain_type
    id: "human_keep"
    name: _ "Keep"
    editor_name: _ "Human Castle Keep"
    string: "Kh"
    aliasof: "Ct"
    unit_height_adjust: 20
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle"


terrain_type
    id: "snow_keep"
    name: _ "Keep"
    editor_name: _ "Snowy Human Castle Keep"
    string: "Kha"
    aliasof: "Ct, At"
    unit_height_adjust: 20
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle, frozen"


terrain_type
    id: "elven_keep"
    name: _ "Keep"
    editor_name: _ "Elven Castle Keep"
    string: "Kv"
    aliasof: "Ct"
    unit_height_adjust: 20
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle"


terrain_type
    id: "dwarven_keep"
    name: _ "Keep"
    editor_name: _ "Dwarven Castle Keep"
    string: "Kud"
    aliasof: "Ct"
    unit_height_adjust: 0
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle, cave"


terrain_type
    id: "ruined_keep"
    name: _ "Ruined Keep"
    editor_name: _ "Ruined Human Castle Keep"
    string: "Khr"
    aliasof: "Ct"
    unit_height_adjust: 20
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle"


terrain_type
    id: "sunken_keep"
    name: _ "Ruined Keep"
    editor_name: _ "Sunken Human Castle Keep"
    string: "Khw"
    aliasof: "Ct, Wst"
    unit_height_adjust: 20
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle, water"


terrain_type
    id: "swamp_keep"
    name: _ "Ruined Keep"
    editor_name: _ "Swamp Human Castle Keep"
    string: "Khs"
    aliasof: "Ct, St"
    unit_height_adjust: 20
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle, water"


terrain_type
    id: "desert_keep"
    name: _ "Keep"
    editor_name: _ "Desert Keep"
    string: "Kd"
    aliasof: "Ct"
    unit_height_adjust: 20
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle, desert"


terrain_type
    id: "desert_keep_ruined"
    name: _ "Ruined Keep"
    editor_name: _ "Ruined Desert Keep"
    string: "Kdr"
    aliasof: "Ct"
    unit_height_adjust: 20
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle, desert"


terrain_type
    editor_image: "castle/castle-overlay-editor"
    id: "castle_overlay"
    name: _ "Castle"
    editor_name: _ "Castle Overlay"
    string: "^Cov"
    aliasof: "_bas"
    recruit_onto: "true"
    editor_group: "castle, special"
    hide_help: "yes"


terrain_type
    editor_image: "castle/keep-overlay-editor"
    id: "keep_overlay"
    name: _ "Keep"
    editor_name: _ "Keep Overlay"
    string: "^Kov"
    aliasof: "_bas"
    recruit_from: "true"
    recruit_onto: "true"
    editor_group: "castle, special"
    hide_help: "yes"


terrain_type
    id: "bridge"
    name: _ "Bridge"
    editor_name: _ "Wooden Bridge"
    string: "^Bw|"
    aliasof: "_bas, Gt"
    submerge: 0
    unit_height_adjust: 22
    editor_group: "bridge, water"
    help_topic_text: _ [[To those capable of building one, the ability to lay a <italic>text='bridge'</italic> offers a liberation from the fickle nature of waterways, whose fords come and go with the rise and fall of the waterline. This is to say nothing of the luxury of dry feet, the loss of which is no laughing matter in the cold months of the year.

For those who go by land or sea, a bridge is the best of both worlds — for gameplay purposes, it is treated either as grassland or the underlying water, whichever offers the best movement and defensive bonuses for the unit occupying the bridge hex. Note that a swimming unit and a land unit are not capable of occupying a bridge hex at the same time.]]


terrain_type
    id: "bridgediag1"
    name: _ "Bridge"
    editor_name: _ "Wooden Bridge"
    string: "^Bw/"
    aliasof: "_bas, Gt"
    editor_group: "bridge, water"
    submerge: 0
    unit_height_adjust: 22
    hide_help: "yes"


terrain_type
    id: "bridgediag2"
    name: _ "Bridge"
    editor_name: _ "Wooden Bridge"
    string: "^Bw\\"
    aliasof: "_bas, Gt"
    editor_group: "bridge, water"
    submerge: 0
    unit_height_adjust: 22
    hide_help: "yes"


terrain_type
    id: "rotbridge"
    name: _ "Bridge"
    editor_name: _ "Rotting Bridge"
    string: "^Bw|r"
    aliasof: "_bas, Gt"
    submerge: 0
    unit_height_adjust: 22
    editor_group: "bridge, water"


terrain_type
    id: "rotbridgediag1"
    name: _ "Bridge"
    editor_name: _ "Rotting Bridge"
    string: "^Bw/r"
    aliasof: "_bas, Gt"
    editor_group: "bridge, water"
    submerge: 0
    unit_height_adjust: 22
    hide_help: "yes"


terrain_type
    id: "rotbridgediag2"
    name: _ "Bridge"
    editor_name: _ "Rotting Bridge"
    string: "^Bw\\r"
    aliasof: "_bas, Gt"
    editor_group: "bridge, water"
    submerge: 0
    unit_height_adjust: 22
    hide_help: "yes"


terrain_type
    id: "stone_bridge"
    name: _ "Bridge"
    editor_name: _ "Basic Stone Bridge"
    string: "^Bsb|"
    aliasof: "_bas, Gt"
    submerge: 0
    unit_height_adjust: 22
    editor_group: "bridge,water"


terrain_type
    id: "stone_bridgediag1"
    name: _ "Bridge"
    editor_name: _ "Basic Stone Bridge"
    string: "^Bsb\\"
    aliasof: "_bas, Gt"
    submerge: 0
    unit_height_adjust: 22
    editor_group: "bridge,water"
    hide_help: "yes"


terrain_type
    id: "stone_bridgediag2"
    name: _ "Bridge"
    editor_name: _ "Basic Stone Bridge"
    string: "^Bsb/"
    aliasof: "_bas, Gt"
    submerge: 0
    unit_height_adjust: 22
    editor_group: "bridge,water"
    hide_help: "yes"


terrain_type
    id: "bridgechasm"
    name: _ "Bridge"
    editor_name: _ "Cave Chasm Bridge"
    string: "^Bs|"
    aliasof: "Ut,_bas"
    default_base: "Qxu"
    editor_group: "bridge, cave"


terrain_type
    id: "bridgechasmdiag1"
    name: _ "Bridge"
    editor_name: _ "Cave Chasm Bridge"
    unit_height_adjust: 22
    string: "^Bs/"
    aliasof: "Ut,_bas"
    default_base: "Qxu"
    editor_group: "bridge, cave"
    hide_help: "yes"


terrain_type
    id: "bridgechasmdiag2"
    name: _ "Bridge"
    editor_name: _ "Cave Chasm Bridge"
    unit_height_adjust: 22
    string: "^Bs\\"
    aliasof: "Ut,_bas"
    default_base: "Qxu"
    editor_group: "bridge, cave"
    hide_help: "yes"


terrain_type
    id: "hangingbridgediag1"
    name: _ "Hanging Bridge"
    string: "^Bh\\"
    aliasof: "_bas, Gt"
    default_base: "Qxu"
    unit_height_adjust: 20
    editor_group: "bridge, cave"
    hide_help: "yes"


terrain_type
    id: "hangingbridgediag2"
    name: _ "Hanging Bridge"
    string: "^Bh/"
    aliasof: "_bas, Gt"
    default_base: "Qxu"
    unit_height_adjust: 20
    editor_group: "bridge, cave"
    hide_help: "yes"


terrain_type
    id: "hangingbridge"
    name: _ "Hanging Bridge"
    string: "^Bh|"
    default_base: "Qxu"
    aliasof: "_bas, Gt"
    unit_height_adjust: 20
    editor_group: "bridge, cave"


terrain_type
    id: "stonechasmbridgediag1"
    name: _ "Stone Chasm Bridge"
    string: "^Bcx\\"
    default_base: "Qxu"
    aliasof: "_bas, Gt"
    editor_group: "bridge, cave"
    hide_help: "yes"


terrain_type
    id: "stonechasmbridgediag2"
    name: _ "Stone Chasm Bridge"
    string: "^Bcx/"
    default_base: "Qxu"
    aliasof: "_bas, Gt"
    editor_group: "bridge, cave"
    hide_help: "yes"


terrain_type
    id: "stonechasmbridge"
    name: _ "Stone Chasm Bridge"
    string: "^Bcx|"
    default_base: "Qxu"
    aliasof: "_bas, Gt"
    editor_group: "bridge, cave"


terrain_type
    id: "plankbridgediag1"
    name: _ "Plank Bridge"
    string: "^Bp\\"
    default_base: "Qxu"
    aliasof: "_bas, Gt"
    editor_group: "bridge, cave"
    hide_help: "yes"


terrain_type
    id: "plankbridgediag2"
    name: _ "Plank Bridge"
    string: "^Bp/"
    default_base: "Qxu"
    aliasof: "_bas, Gt"
    editor_group: "bridge, cave"
    hide_help: "yes"


terrain_type
    id: "plankbridge"
    name: _ "Plank Bridge"
    string: "^Bp|"
    default_base: "Qxu"
    aliasof: "_bas, Gt"
    editor_group: "bridge, cave"


terrain_type
    editor_image: "off-map/offmap-editor"
    id: "off_map"
    name: _ "Void"
    editor_name: _ "Off Map"
    string: "_off^_usr"
    editor_group: "special, obstacle"
    hide_help: "yes"


terrain_type
    editor_image: "off-map/border-ne-se-s-sw-nw-n"
    id: "off_map2"
    name: _ "Void"
    editor_name: _ "Experimental Fake Map Edge"
    string: "^_fme"
    editor_group: "special, obstacle"
    hide_help: "yes"


terrain_type
    editor_image: "void/shroud-editor"
    id: "shroud"
    name: _ "Shroud"
    string: "_s"
    editor_group: "special"
    hide_help: "yes"


terrain_type
    editor_image: "fog/fog-editor"
    id: "fog"
    name: _ "Fog"
    string: "_f"
    editor_group: "special"
    hide_help: "yes"


terrain_type
    icon_image: "symbols/terrain_type_fungus"
    id: "fungus"
    name: _ "Fungus"
    editor_name: _ "Fungus"
    string: "Uft"
    hidden: "yes"
    help_topic_text: _ [[<italic>text='Mushroom groves'</italic> are vast underground forests of giant mushrooms,
which thrive in the damp darkness. Most units have trouble negotiating the spongy floor of smaller fungi, but they have plenty of cover behind the larger stalks. Mounted units, however, become completely mired and lack proper freedom of movement in combat. Undead units have a natural affinity for decay and function quite well in mushroom forests.

Most units receive 50% to 60% defense in mushroom groves, whereas cavalry receive only 20%.]]


terrain_type
    icon_image: "symbols/terrain_type_cave"
    id: "cave"
    name: _ "Cave"
    editor_name: _ "Cave"
    string: "Ut"
    help_topic_text: _ [[<italic>text='Cave'</italic> terrain represents any underground cavern with enough room for a unit to pass.
Most units are wholly unfamiliar with the terrain, and thus are both slowed down and hindered in defense. Dwarves and trolls, who make their homes in caves, both have a relatively easy time navigating this terrain, especially dwarves, who by dint of their small size can navigate many obstacles that other races cannot. Occasionally caves are <ref>dst='terrain_illuminated_cave' text='illuminated'</ref>.

Rare patches of the underground world are illuminated by light from the surface shining down into the gloomy darkness. This provides an attack bonus for lawful units and removes the attack bonus from chaotic units. In all other regards this terrain is functionally identical to normal cave terrains.

Most units receive 20 to 40% defense in caves, whereas dwarves have 50%.]]
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_sand"
    id: "sand"
    name: _ "Sand"
    editor_name: _ "Sands"
    string: "Dt"
    editor_group: "desert"
    help_topic_text: _ [[The instability of <italic>text='sand'</italic> makes it harder for most units to cross, and leaves them wide open to attack. In contrast, the wide feet or snakelike bodies of the reptilian races make sand much easier for them to navigate.

Most units receive 20 to 40% defense in sand.]]
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_reef"
    id: "reef"
    name: _ "Coastal Reef"
    editor_name: _ "Coastal Reef"
    string: "Wrt"
    submerge: 0.3
    editor_group: "water"
    help_topic_text: _ [[<italic>text='Coastal reefs'</italic> are shallows formed by stone, coral and sand.
This provides most land units with a more steady footing and defensive positions than wading in shallow water normally would and also grants most water-dwelling races an exceptionally high defense.

Mermen and Naga both receive 70% defense on coastal reefs.]]
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_hills"
    id: "hills"
    name: _ "Hills"
    editor_name: _ "Hills"
    string: "Ht"
    editor_group: "rough"
    help_topic_text: _ [[<italic>text='Hills'</italic> represent any reasonably rough terrain,
with enough dips and rises in the ground to provide some cover. Hills are difficult for most troops to navigate. Dwarves, trolls, and orcs have enough familiarity with the terrain that they can pass through it without being slowed down. Cavalry have enough trouble navigating the terrain that any defensive aid lent by cover is negated.

Most units have about 50% defense in hills, whereas cavalry are limited to 40%. Dwarves enjoy 60% defense in hills.]]
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_swamp_water"
    id: "swamp_water"
    name: _ "Swamp"
    editor_name: _ "Swamp"
    string: "St"
    submerge: 0.4
    editor_group: "water"
    help_topic_text: _ [[<italic>text='Swamps'</italic> represent any sort of wetlands.
Swamps slow down nearly everyone, and inhibit their ability to defend themselves. An exception to this is any race bodily skilled in navigating water; these receive both full movement and a defensive bonus. Those that make their living in the wetlands are also adept at using this terrain for cover.

Most units make do with 30% defense in swamps. Mermen, naga, and saurians all generally enjoy 60%.]]
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_shallow_water"
    id: "shallow_water"
    string: "Wst"
    name: _ "Shallow Water"
    editor_name: _ "Shallow Water"
    help_topic_text: _ [[<italic>text='Shallow water'</italic> represents any body of water deep enough to come up to roughly a man’s waist. This is enough to slow down nearly anyone and leave them wide open to attack. Dwarves, given that the water reaches up almost to their heads, have an extremely hard time of this. The exception is any race whose bodies naturally lend themselves to swimming, for which they receive a considerable defensive bonus and full movement.

Most units make do with 20 to 30% defense in shallow water, whereas both naga and mermen enjoy 60%.]]
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_castle"
    id: "castle"
    name: _ "Castle"
    editor_name: _ "Castle"
    string: "Ct"
    unit_height_adjust: 3
    recruit_onto: "true"
    editor_group: "castle"
    help_topic_text: _ [[<italic>text='Castles'</italic> are any sort of permanent fortification.
Nearly all units receive a considerable bonus to their defense by being stationed in a castle, and most units receive full movement in a castle. Stationing units in a castle represents its defensive capability. Without a unit in each wall hex, an enemy can simply sneak into the castle unchallenged, gaining the same defensive bonus as everyone inside.

Most units have about 60% defense in a castle.]]
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_mountains"
    id: "mountains"
    name: _ "Mountains"
    editor_name: _ "Mountains"
    string: "Mt"
    editor_group: "rough"
    help_topic_text: _ [[<italic>text='Mountains'</italic> are steep enough that units often have to climb over obstacles to move.
By this nature, they provide a considerable defensive bonus for most troops, but they also severely impede any passage through them. Most cavalry simply cannot enter mountainous terrain; however, elvish cavalry is an exception to this, as are the goblin wolf riders. Both dwarves and trolls are native to mountainous terrain, and have a very easy time getting around.

Most units receive about 60% defense in mountains, whereas Dwarves enjoy 70%.]]
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_deep_water"
    id: "deep_water"
    name: _ "Deep Water"
    editor_name: _ "Deep Water"
    help_topic_text: _ [[<italic>text='Deep water'</italic> represents any body of water deep enough to cover a man’s head.
Most units cannot enter deep water: it is the domain of units which can either fly, or are exceptionally strong swimmers.

Mermen and naga both receive 50% defense in deep water, with full movement.]]
    string: "Wdt"
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_flat"
    id: "flat"
    name: _ "Flat"
    editor_name: _ "Flat"
    help_topic_text: _ [[<italic>text='Grassland'</italic> represents open plains, whether cultivated, cut back for grazing, or wild.
Being open ground, grassland is both very easy to move across, but is also difficult to defend oneself in. Typically, those units that perform best on grassland are either cavalry, or very agile units which take advantage of the open space.

Most units have defense of 30 to 40% on grassland.]]
    string: "Gt"
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_forest"
    id: "forest"
    name: _ "Forest"
    editor_name: _ "Forest"
    help_topic_text: _ [[<italic>text='Forests'</italic> represent any woodland with significant undergrowth, enough to hinder passage. Though they slow nearly everyone down, forests do offer better defense to most units than open ground. Cavalry, however, have so much trouble navigating them that any benefit gained by stealth is negated. Elves are an exception to this general rule for forests. Not only do they possess full movement in forests, but they also gain a considerable defensive bonus. Dwarves are another exception to this rule; though they are able to plow through the forests without much loss of speed, their utter unfamiliarity with the terrain causes them to receive no defensive bonus.

Most units have 50% defense in forests, but cavalry are limited to 30%. Elves, on the other hand, enjoy 60 to 70% defense, even their mounted units. Dwarves generally receive only 30% defense in forests.]]
    string: "Ft"
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_frozen"
    id: "frozen"
    name: _ "Frozen"
    editor_name: _ "Frozen"
    string: "At"
    help_topic_text: _ [[<italic>text='Frozen'</italic> terrain represents any flat area that is covered by snow or ice.
Most units are slowed down on it, and have a harder time defending themselves. Note that swimming units, even those who can breathe underwater, cannot swim underneath ice.

Most units have 20 to 40% defense in frozen terrain.]]
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_village"
    id: "village"
    name: _ "Village"
    editor_name: _ "Village"
    string: "Vt"
    help_topic_text: _ [[<italic>text='Villages'</italic> represent any group of buildings, human or otherwise.
Almost all units, even cavalry, have an easy time navigating villages, and most units gain a defensive bonus from being stationed in a village. Villages allow units the resources to clean and tend to their wounds, which allows any unit stationed therein to heal eight hitpoints each turn, or to be cured of poison.

Most units have 50 to 60% defense in villages, whereas cavalry receive only 40%.]]
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_impassable"
    id: "impassable"
    name: _ "Impassable"
    editor_name: _ "Impassable"
    string: "Xt"
    help_topic_text: _ "Obstacles that not even the most determined traveler may overcome include solid walls of stone and mountains so tall and steep that they are constantly wreathed in cloud. Even flying creatures cannot navigate the jagged peaks at such rarefied heights, and not even the fiercest troll can smash through thick walls of stone."
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_unwalkable"
    id: "unwalkable"
    name: _ "Unwalkable"
    editor_name: _ "Unwalkable"
    string: "Qt"
    help_topic_text: _ "<italic>text='Unwalkable terrain'</italic> covers any chasm or gorge which, as the name implies, cannot be crossed simply by walking. Chasms are noted for sheer walls which would take days to traverse. As far as gameplay is concerned, only units capable of flying can cross this terrain."
    hidden: "yes"


terrain_type
    icon_image: "symbols/terrain_type_rails"
    id: "rails"
    name: _ "Rails"
    editor_name: _ "Rails"
    string: "Rt"
    help_topic_text: _ "<italic>text='Rails'</italic> are used to transport ore. By Dwarfs. Mostly."
    hidden: "yes"

