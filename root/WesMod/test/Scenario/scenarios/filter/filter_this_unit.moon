
-- Note: As an Orcish Grunt without traits, Bob starts with 38 hitpoints.
-- Thus, the first test sets his hitpoints to 19, and the second test
-- sets his level to 2.

GENERIC_UNIT_TEST "filter_this_unit_wml", ->
	event
		name:"Prestart"
        command: ->
            modify_unit
                filter:
                    id:"bob"
                hitpoints:"$($this_unit.max_hitpoints / 2)"
            RETURN have_unit
                id:"bob"
                filter_wsl:
                    hitpoints:"$($this_unit.max_hitpoints / 2)"


GENERIC_UNIT_TEST "filter_this_unit_tl", ->
	event
		name:"prestart"
        command: ->
            modify_unit
                filter:
                    id:"bob"
                level:"$($this_unit.max_hitpoints / 19)"
            RETURN have_unit
                id:"bob"
                level:"$($this_unit.max_hitpoints / 19)"


GENERIC_UNIT_TEST "filter_this_unit_fai", ->
	event
		name:"Prestart"
        command: ->
            modify_unit
                filter:
                    id:"bob"
                moves:3
            RETURN have_unit
                id:"bob"
                formula:"$this_unit.moves < $this_unit.max_moves"
