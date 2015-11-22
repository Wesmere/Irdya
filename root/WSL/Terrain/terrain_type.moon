wsl_handler
    id: "terrain_type"
    scope: "Terrain"
    description: [[The "terrain_type" table describes a terrain in WSL.]]
    
    on_scan: (cfg) ->
    on_load: (cfg) ->

    scheme:
        id:
            type: "String"
            mandatory: true
            description: [[a non-translatable string identifying this terrain. It is used as the key for attributes in some parts of WSL, such as "move_type" (but see also the "aliasof" key below; not all ids need to be listed under move_types).]]
        name:
            description: [[the name of the terrain, a translatable string used for the display of terrain type in the game and the map editor]]
            type: "tString"
        description:
            description: [[the detailed description of the terrain, a translatable string used for the display of terrain type in the game and the map editor. If this is not present, the game and editor will fall back to the name attribute. The difference is that the name tends to describe the game effect of the terrain type (e.g., "Forest") but the description attribute also carries information about visual subtype (e.g. "Summer Deciduous Forest").]]
            type: "tString"
        editor_name:
            description: [[a detailed name for the terrain used only in the map editor. Terrains are presented in the editor as "<editor_name>/<name> (<aliases>)" when this attribute is used.]]
            type: "tString"
        string:
            mandatory: true
            type: "String"
            description: [[this is the string that represents the terrain in maps and scenarios]]
        unit_height_adjust:
            description: [[how much the unit graphic should be moved up or down when on that terrain]]
            type: "Integer"
        submerge:
            description: [[float, between 0 and 1: specifies how much of the unit graphic should be submerged by the terrain]]
            type: "Float"
        light:
            description: [[signed value: this will modify the local light level on that hex by that amount for gameplay.]]
            type: "Signed"
        max_light:
            description: [[signed value: this is the maximum local light level that may be indicated by light=. Defaults to the value of light= and is effectively overridden by the time-of-day lighting, if that is higher.]]
            type: "Signed"
        min_light:
            description: [[signed value: this is the minimum local light level that may be indicated by light=. Defaults to the value of light= and is effectively overridden by the time-of-day lighting, if that is lower.]]
            type: "Signed"
        heals:
            description: [[signed value: this value is the amount of HP a unit on this terrain will be healed at the start of every turn. (If set to true a unit on that terrain will be healed 8 HP at the start of every turn.) This notation is deprecated and support might be removed at some point.]]
            type: {"Signed", "Bool"}
        gives_income:
            default: false
            description: [[if set to true, this terrain will give income every turn when flagged, as if it were a village]]
            type: "Bool"
        recruit_onto:
            type: "Bool"
            default: false
            description: [[if set to true, it is possible to recruit or recall on that terrain]]
        recruit_from:
            type: "Bool"
            default: false
            description: [[if set to true it is possible to recruit when a unit that can recruit is on that terrain]]
        aliasof:
            is_list: true
            description: [[comma separated string of terrains of which this terrain will be an alias. This is a list of terrains, with + and - signs having special meanings. The string is read left to right taking the best value until a minus sign is encountered, after which it takes the worst value instead. The plus sign reverts to best value. (Note: after a + or - a comma is also required. In order to include a + sign the entire line must be placed between double quotes.)]]
            type: "Terrain_String"
        def_alias:
            is_list: true
            description: [[like aliasof but overides it for defense calculation only]]
            type: "Terrain_String"
        mvt_alias:
            is_list: true
            description: [[like aliasof but overides it for movement calculation only]]
            type: "Terrain_String"
        vision_alias:
            is_list: true
            description: [[like aliasof but overides it for vision calculation only]]
            type: "Terrain_String"
        income_description:
            description: [[for terrains with gives_income and owned by nobody this text is shown in the terrain description in the top bar before the brackets. This tag is optional, if not supplied Wesnoth will assume the terrain is a village and sets an appropriate message.]]
            type: "tString"
        income_description_ally:
            type: "tString"
            description: [[like income_description but if owned by an ally]]
        income_description_enemy:
            type: "tString"
            description: [[like income_description but if owned by an enemy]]
        income_description_own:
            type: "tString"
            description: [[like income_description but if owned by yourself]]
        editor_group:
            description: [[a comma separated list of editor_group ids to which this terrain belongs.]]
            is_list: true
            type: "String"
        hidden:
            description: [[(boolean) if set to 'true', makes this terrain not appear in the map editor palettes.]]
            type: "Bool"
            default: false
        hide_help:
            description: [[(boolean) if set to 'true', makes this terrain not appear in the terrain help browser.]]
            type: "Bool"
            default: false
        -- symbol_image: an image used for this terrain in the minimap
        -- editor_image: an image used for this terrain in the map editor; if not defined uses symbol_image
        -- icon_image: an image used for this terrain to indicate defence/movement; shown in the help, and in the sidebar when the terrain is highlighted
