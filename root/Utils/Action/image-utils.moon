-- Utility functions for images, overlays, and display effects.

-- # These don't depend on any other macros.  Please don't change this.

-- #define MAGENTA_IS_THE_TEAM_COLOR
--     # A macro to define a common set of magenta color values which different
--     # units can be color shifted by using the team color system.
--     flag_rgb=magenta
-- #enddef

-- #define COLOR_HEAL
--     green=255
-- #enddef

-- #define COLOR_HARM
--     red=255
-- #enddef

-- #define COLOR_WHITE
--     red=255
--     green=255
--     blue=255
-- #enddef

-- Embed this into a unit declaration to add a hero icon to the unit.
IS_HERO = (cfg) ->
    with cfg
        .overlays="misc/hero-icon"
        .ellipse="misc/ellipse-hero"
    return cfg

-- Embed this into a unit declaration to add a loyalty icon to the unit.
IS_LOYAL = (cfg) ->
    cfg.overlays="misc/loyal-icon"
    return cfg

-- Embed this into a unit declaration to add an expendable leader icon to the unit.
IS_EXPENDABLE_LEADER = (cfg) ->
    cfg.overlays = "misc/leader-expendable"
    return cfg

-- #define NEW_JOURNEY X Y
--     # Make a new journey mark on a tracking map
--     [image]
--         x,y={X},{Y}
--         file=misc/new-journey.png
--         delay=500
--         centered=yes
--     [/image]
-- #enddef

-- #define OLD_JOURNEY X Y
--     # Make an old journey mark on a tracking map
--     [image]
--         x,y={X},{Y}
--         file=misc/dot-white.png
--         centered=yes
--     [/image]
-- #enddef

-- #define NEW_BATTLE X Y
--     # Make a new battle mark on a tracking map, with a blinking animation.
--     # Because of the animation, generally you should only use this as the final
--     # journey marker in any given story screen.
--     [image]
--         x,y={X},{Y}
--         file=misc/new-battle2.png
--         delay=500
--         centered=yes
--     [/image]
--     [image]
--         x,y={X},{Y}
--         file=misc/new-battle.png
--         delay=500
--         centered=yes
--     [/image]
--     [image]
--         x,y={X},{Y}
--         file=misc/new-battle2.png
--         delay=500
--         centered=yes
--     [/image]
--     [image]
--         x,y={X},{Y}
--         file=misc/new-battle.png
--         delay=500
--         centered=yes
--     [/image]
--     [image]
--         x,y={X},{Y}
--         file=misc/new-battle2.png
--         delay=500
--         centered=yes
--     [/image]
-- #enddef

-- #define OLD_BATTLE X Y
--     # Make an old battle mark on a tracking map
--     [image]
--         x,y={X},{Y}
--         file=misc/cross-white.png
--         centered=yes
--     [/image]
-- #enddef

-- #define NEW_REST X Y
--     # Make a new rest mark on a tracking map, with a blinking animation.
--     # Because of the animation, generally you should only use this as the final
--     # journey marker in any given story screen.
--     [image]
--         x,y={X},{Y}
--         file=misc/flag-red.png
--         delay=500
--         centered=yes
--     [/image]
--     [image]
--         x,y={X},{Y}
--         file=misc/flag-red2.png
--         delay=500
--         centered=yes
--     [/image]
--     [image]
--         x,y={X},{Y}
--         file=misc/flag-red.png
--         delay=500
--         centered=yes
--     [/image]
--     [image]
--         x,y={X},{Y}
--         file=misc/flag-red2.png
--         delay=500
--         centered=yes
--     [/image]
--     [image]
--         x,y={X},{Y}
--         file=misc/flag-red.png
--         delay=500
--         centered=yes
--     [/image]
-- #enddef

-- #define OLD_REST X Y
--     # Make an old rest mark on a tracking map
--     [image]
--         x,y={X},{Y}
--         file=misc/flag-white.png
--         centered=yes
--     [/image]
-- #enddef

PLACE_IMAGE = (IMAGE, X, Y) ->
--     # Place an image at a specified location on the map.
    item
        x: X
        y: Y
        image: IMAGE

REMOVE_IMAGE = (X, Y) ->
--     # Removes a previously set image from a tile.
--     #
--     # Example:
--     #! {REMOVE_IMAGE 14 5}
    remove_item
        x: X
        y: Y

TEAM_COLOR_OVERRIDE = (FILTER, TEAMCOLOR_ID) ->
--     # Override the team color of filtered units.
    object
        silent: true
        filter: FILTER
        effect:
            apply_to: "image_mod"
            add: "RC(magenta>#{TEAMCOLOR_ID})"

-- Give an existing unit a hero overlay
MAKE_HERO = (ID_STRING) ->
    unit_overlay
        id: ID_STRING
        image: "misc/hero-icon"
    object
        silent: true
        duration: "forever"
        filter:
            id: ID_STRING
        effect:
            apply_to: "ellipse"
            ellipse: "misc/ellipse-hero"

-- Remove the hero overlay from a unit
UNMAKE_HERO = (ID_STRING) ->
    remove_unit_overlay
        id: ID_STRING
        image: "misc/hero-icon"
    object
        silent: true
        duration: "forever"
        filter:
            id: ID_STRING
        effect:
            apply_to: "ellipse"
            ellipse: "misc/ellipse"

-- Enable the specified flag variant: knalgan, loyalist, ragged,
-- long, undead, or wood-elvish. Use within a [side] block; only
-- affects that side.
-- Since the ragged variant has six frames instead of the usual four,
-- for that flag it's better to use FLAG_VARIANT6 below instead.
FLAG_VARIANT = (NAME, cfg) ->
    cfg.flag = "flags/{NAME}-flag-[1~4]:150"
    cfg.flag_icon = "flags/{NAME}-flag-icon"
    return cfg

-- Like FLAG_VARIANT, but this supports flags with six frames.
-- Currently only the ragged flag has six frames.
FLAG_VARIANT6 = (NAME, cfg) ->
    cfg.flag = "flags/#{NAME}-flag-[1~6]:150"
    cfg.flag_icon = "flags/#{NAME}-flag-icon"

-- #define ANIMATED_MAUSOLEUM X Y
--     # Embed this at scenario toplevel, not within an event.
--     # Note that it will freeze while dialogue popups are onscreen.
--     [terrain_graphics]
--         x={X}
--         y={Y}
--         [tile]
--             x=0
--             y=0
--             set_flag=mausoleum
--         [/tile]
--     [/terrain_graphics]
--     [terrain_graphics]
--         map="
-- , *
-- * , *
-- , 1
-- * , *
-- , *"
--         [tile]
--             pos=1
--             has_flag=mausoleum
--         [/tile]
--         [image]
--             layer=0
--             center=92,138
--             # wslscope: start ignoring
--             # FIXME: More implicit-path breakage
--             name="../scenery/mausoleum[01~18].png:140"
--             # wslscope: stop ignoring
--         [/image]
--     [/terrain_graphics]
-- #enddef
