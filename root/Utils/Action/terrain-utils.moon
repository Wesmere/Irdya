-- Utility macros for manipulating map terrain and overlays.

-- These don't depend on any other macros.  Please don't change this.
-- ! in comments is used in generating HTML documentation, ignore it otherwise.

-- Changes the terrain at a given list of coordinates
--
-- For example, we could make 14,15 and 14,16 grassland:
-- ! {MODIFY_TERRAIN Gg (14,14) (15,16)}
MODIFY_TERRAIN = (TERRAIN, X_SPAN, Y_SPAN) ->
    terrain
        terrain: TERRAIN
        x: X_SPAN
        y: Y_SPAN

--     # Changes the terrain for a given area
MODIFY_TERRAIN_MASK = (X, Y, MASK_VALUE, RULES_WSL) ->
    with RULES_WSL
        .x = X
        .y = Y
        .mask = MASK_VALUE
    terrain_mask RULES_WSL

shuffleTable = ( t ) ->
    math.randomseed(os.time!)
    rand = math.random
    assert( t, "shuffleTable() expected a table, got nil" )
    iterations = #t
    for i = iterations, 2, -1
        j = rand(i)
        t[i], t[j] = t[j], t[i]

-- Place NUMBER copies of the IMAGE on map hexes matching FILTER.
--
-- This call will scatter 20 copies of a pine-tree graphic over grassland:
-- ! {SCATTER_IMAGE (terrain=Gg) 20 scenery/pine1.png}
SCATTER_IMAGE = (FILTER, NUMBER, IMAGE) ->
    random_placement_locations = store_locations FILTER
    shuffleTable(random_placement_locations)
    for i = 1, math.min(NUMBER, #random_placement_locations)
        item
            image: IMAGE
            x: random_placement_locations[i].x
            y: random_placement_locations[i].y

-- Adds the given embellishment to the given percentage of the given terrain
-- on the map.
--
-- For example, this will add flowers to 5% of all grassland:
-- ! {SCATTER_EMBELLISHMENTS G* ^Efm 5}
SCATTER_EMBELLISHMENTS = (TERRAINLIST, EMBELLISHMENT_NAME, PERCENTAGE) ->
    terrain_variation_locations = store_locations
        terrain: TERRAINLIST
    shuffleTable(terrain_variation_locations)
    terrain_variations_to_place = math.ceil((PERCENTAGE / 100.0) * #terrain_variation_locations)
    for i = 1, terrain_variations_to_place
        terrain
            terrain: EMBELLISHMENT_NAME
            layer: "overlay"
            x: terrain_variation_locations[i]
            y: terrain_variation_locations[i]
