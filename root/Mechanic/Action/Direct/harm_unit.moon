wsl_action
    id: "harm_unit"
    description: [[Harms every unit matching the filter, for the specific damage amount.]]

    action: (cfg, kernel) ->
        primary_unit = kernel\get_unit(cfg.filter)
        second_unit = kernel\get_unit(cfg.filter_second)
        amount = cfg.amount



    scheme:
        filter:
            description: [[StandardUnitFilter all matching units will be harmed (required).]]
            type: "Table"
            table: "SUF"
            mandatory: true

        filter_second:
            description: [[StandardUnitFilter if present, the first matching unit will attack all the units matching the filter above.]]
            type: "Table"
            table: "SUF"

        amount:
            description: [[the amount of damage that will be done (required).]]
            type: "Signed"
            mandatory: true

        alignment:
            description: [[(default neutral) applies an alignment to the damage, this means that if alignment=chaotic, the damage will be increased at night and reduced at day.]]
            type: "String"
            default: "neutral"

        damage_type:
            description: [[if present, amount will be altered by unit resistance to the damage type specified.]]
            type: "String"

        kill:
            description: [[(default yes) if yes, when a harmed unit goes to or below 0 HP, it is killed; if no its HP are set to 1.]]
            default: true
            type: "Bool"

        fire_event:
            description: [[(default no) if yes, when a unit is killed by harming, the corresponding events are fired. If yes, also the corresponding advance and post advance events are fired.]]
            default: false
            type: "Bool"

        animate:
            description: [[(default no) if yes, scrolls to each unit before harming it and plays its defense (or attack, if it's the harmer) and death animations. Special values supported, other than the usual yes and no, are "attacker", that means only the harmer will be animated, and "defender", that means only the harmed units will be animated. If the supplied value is yes, attacker or defender also advancement animations are played.]]
            default: false
            type: "Bool"

        primary_attack:
            description: "sowas"
        secondary_attack:
            description: [[these set the weapon against which the harmed units will defend, and that the harming unit will use to attack, respectively (notice this is the opposite of [filter] and [filter_second] above). This allows for playing specific defense and attack animations. Both tags are expected to contain a Standard Weapon Filter.]]

        delay:
            description: [[if animate=yes, sets the delay (in milliseconds, default 500) between each unit harming.]]
        variable:
            description: [[if present, the damage caused to the unit, altered by resistances, will be stored in a WML array with the given name, under the "harm_amount" key.]]

        poisoned:
            default: false
            description: [[(default no) if yes, every harmed unit that doesn't already have such status will have it set.]]

        slowed:
            default: false
            description: [[(default no) if yes, every harmed unit that doesn't already have such status will have it set.]]

        petrified:
            default: false
            description: [[(default no) if yes, every harmed unit that doesn't already have such status will have it set.]]

        unhealable:
            default: false
            description: [[(default no) if yes, every harmed unit that doesn't already have such status will have it set.]]

        experience:
            description: [[if yes, and there is a harmer, experience will be attributed like in regular combat.]]
        resistance_multiplier:
            description: [[the harmed unit's resistance is multiplied by the supplied value; this means that a value lower than 1 increases it, and a value greater than 1 decreases it. Default value is 1, that means no modification.]]

