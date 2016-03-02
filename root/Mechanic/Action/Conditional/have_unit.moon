
wsl_action
    id: "have_unit"
    description: "A unit with greater than zero hit points matching this filter exists."

    action: (cfg) ->

        found = 0
        if cfg.search_recall_list
            for side in *wesmere.sides
                continue unless wesmere.match_side(side, cfg)
                for unit in *side.recall_list
                    found += 1 if wesmere.match_unit(unit, cfg) and unit.hitpoints > 0

        unless cfg.count
            return wesmere.get_unit(cfg) != nil

        found += #wesmere.get_units(cfg)
        return wesmere.match_range(found, cfg.count)

    scheme:
        StandardUnitFilter:
            description: "Selection criteria. Do not use a 'filter:' table."
            type: "SUF"
            inline: true
        count:
            description: [[(Optional) If used, a number of units equal to the value must match the filter. Accepts a number, range, or comma separated range. If not used, the default value is "1-99999".]]
            default: "1-99999"
            type: { "number", "range" }
            mandatory: false
        search_recall_list:
            description: "(Optional) If 'true', search through recall list too. (Default is 'false')"
            default: false
            type: "boolean"
            mandatory: false
