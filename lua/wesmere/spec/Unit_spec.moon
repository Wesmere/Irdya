
Unit = require "Unit"
Loc = require "Location"

unit_types = require("units").unit_types

loc = Loc(12,8)

state =
    board:
        units:
            Kalenz: loc

unit_types["Elvish Fighter"] =
        id: "Elvish Fighter"
        hitpoints: 28

describe "Unit", ->

    cfg =
        id: "Kalenz"
        type: "Elvish Fighter"

    describe "get unit.type", ->

        it "Elvish Fighter", ->
            unit = Unit(state, cfg)
            assert.are.equal "Elvish Fighter", unit.type

    describe "getters", ->

        it "unit.x", ->
            unit = Unit(state, cfg)
            assert.are.equal loc.x, unit.x

        it "unit.y", ->
            unit = Unit(state, cfg)
            assert.are.equal loc.y, unit.y

        it "unit.loc", ->
            unit = Unit(state, cfg)
            assert.are.equal loc, unit.loc
