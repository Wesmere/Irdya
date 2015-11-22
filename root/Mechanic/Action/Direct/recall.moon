wsl_action
    id: "recall"
    description: [[Recalls a unit taking into account any filter_recall of the leader. The unit is recalled free of charge, and is placed near its leader, e.g., if multiple leaders are present, near the first found which would be able to normally recall it.
If neither a valid map location is provided nor a leader on the map would be able to recall it, the tag is ignored.]]

    scheme:

-- StandardUnitFilter: the first matching unit will be recalled. If no units match this tag is ignored. Do not use a [filter] tag. If a comma separated list is given, every unit currently considered for recall is checked against all the types (not each single one of the types against all units).
-- x,y: the unit is placed here instead of next to the leader.

        show:
            description:[[yes/no, default yes: whether the unit is animated (faded in) or instantly displayed]]
        fire_event:
            description: [[boolean yes|no (default no); whether any according prerecall or recall events shall be fired.]]
        check_passability:
            description: [[(boolean yes|no, default yes): If yes, checks for terrain passability when placing the unit (a nearby passable hex is chosen).]]
