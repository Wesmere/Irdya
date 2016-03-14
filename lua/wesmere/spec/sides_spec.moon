
sides = require "sides"

describe "sides", ->


    describe "get_village_owner", ->

        sides.set_village_owner(state, loc.x, loc.y, 2)

        owner = sides.get_village_owner(loc.x, loc.y)

        assert.are.equals 2, owner

    describe "set_village_owner", ->

    describe "get_sides", ->

    describe "match_side", ->

    describe "get_starting_location", ->

    describe "all_sides", ->

    describe "is_enemy", ->
