
Unit = require "Unit"
Loc = require "Location"

loc = Loc(12,8)

state =
    board:
        units:
            Kalenz: loc

unit_types =
    [Elvish Fighter]:
        id: "Elvish Fighter"
        hitpoints: 28

describe "Unit", ->

    cfg = {
        id: "Kalenz"
        type: "Elvish Fighter"
    }

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
