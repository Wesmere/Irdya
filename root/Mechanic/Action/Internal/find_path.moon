wsl_action
    id: "find_path"
    description: [[A WML interface to the pathfinder. Calculates the path between a unit and a location and returns the result in a WML variable, that contains also an array for every step of the path.

This is the structure of the variable returned by [find_path]:
[path]
	hexes = the total length of the path
		if the path is calculated to an impassable hex, or the move requires multiple turns
		and allow_multiple_turns is no, its value will be 0.
	from_x, from_y = location of the unit
	to_x, to_y = destination
	movement_cost = total movement cost required by unit to reach that hex
	required_turns = total turns required by unit to reach that hex
	[step]
		x, y = location of the step
		terrain = terrain of the step
		movement_cost = movement cost required by unit to reach that hex
		required_turns = turns required by unit to reach that hex]]

    action: (cfg, kernel) ->
        -- path =
        --     hexes:

    scheme:
        traveler:
            description: [[StandardUnitFilter, only the first matching unit will be used for calculation]]

        destination:
            description: [[StandardLocationFilter, only the first matching nearest hex will be used]]

        variable:
            description: [[the variable name where the result will be stored, if no value is supplied 'path' will be used as default name. Each step will be stored in a [step] array inside that variable.]]

        allow_multiple_turns:
            description: [[default no, if yes also moves that require more than one turn will be calculated.]]

        check_visibility:
            description: [[default no, if yes the path will not be computed if some hexes are not visible due to shroud.]]

        check_teleport:
            description: [[default yes, if no teleport won't be taken in account while computing path.]]

        check_zoc:
            description: [[default yes, if no unit ZOCs won't be considered while calculating the path.]]
