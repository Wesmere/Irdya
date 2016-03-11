GENERIC_UNIT_TEST "store_locations_one", ->
    event
        name:"Start"

        command: ->

            returned = store_locations
                x:1
                y:1
                variable:"tmp"
            RETURN(returned[1].terrain == "Gg^Kov")
            --RETURN VARIABLE_CONDITIONAL "tmp.terrain", "equals", "Gg^Kov"
