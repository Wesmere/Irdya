
Unit = require "Unit"
Loc = require "Location"

import unit_types from require "units"
import board from require "map"

describe "Unit", ->

    elvish_fighter =
        id: "Elvish Fighter"
        hitpoints: 28

    unit_types[elvish_fighter.id] = elvish_fighter

    loc = Loc(12,8)
    board.units["Kalenz"] = loc

    cfg =
        id: "Kalenz"
        type: "Elvish Fighter"

    unit = Unit(cfg)

    describe "get unit.type", ->

        it "Elvish Fighter", ->
            assert.are.equal "Elvish Fighter", unit.type

    describe "getters", ->

        it "unit.x", ->
            assert.are.equal loc.x, unit.x

        it "unit.y", ->
            assert.are.equal loc.y, unit.y

        it "unit.loc", ->
            assert.are.equal loc, unit.loc
