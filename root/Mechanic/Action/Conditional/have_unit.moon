

wsl_action
    id: "have_unit"
    description: "A unit with greater than zero hit points matching this filter exists."

    action: (cfg, kernel) ->

        unless cfg.count
            return kernel\get_unit(cfg) != nil

        units = kernel\get_units(cfg)

    scheme:
        StandardUnitFilter:
            description: "Selection criteria. Do not use a [filter] tag."
            type: "SUF"
        count:
            description: [[(Optional) If used, a number of units equal to the value must match the filter. Accepts a number, range, or comma separated range. If not used, the default value is "1-99999".]]
            default: "1-99999"
            type: { "number", "Range" }
        search_recall_list:
            description: "(Optional) If 'yes', search through recall list too. (Default is 'no')"
            default: false
            type: "boolean"

