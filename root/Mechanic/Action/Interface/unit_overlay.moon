wsl_action
    id: "unit_overlay"
    description: "Sets an image that will be drawn over a particular unit, and follow it around"

    scheme:
        StandardUnitFilter:
            description: "All matching units will get the overlay (do not use [filter])"
        image:
            description: "the image to place on the unit"

    action: (cfg, wesnoth) ->
        img = cfg.image or helper.wml_error( "[unit_overlay] missing required image= attribute" )
        for u in *wesnoth.get_units(cfg)
            ucfg = u.__cfg
            for w in *ucfg.overlays
                if w == img then ucfg = nil

            if ucfg
                ucfg.overlays = ucfg.overlays .. ',' .. img
                wesnoth.put_unit(ucfg)
