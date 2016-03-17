
sides = require "sides"

describe "sides", ->

    state =
        board:
            map: {}
            village: {}

    describe "get_village_owner", ->

        pending "@(5,4)", ->

            loc = { x: 5, y:4 }

            sides.set_village_owner(state, loc.x, loc.y, 2)

            owner = sides.get_village_owner(state, loc.x, loc.y)

            assert.are.equals 2, owner

    describe "set_village_owner", ->

    describe "get_sides", ->

    describe "match_side", ->

    describe "get_starting_location", ->

    describe "all_sides", ->

    describe "is_enemy", ->
