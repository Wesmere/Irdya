
Unit = require "Unit"
UnitMap = require "unit_map"
Loc = require "Location"

unit_types = require("units").unit_types

loc = Loc(12,8)
unit_map = UnitMap(25,25)

unit_types["Elvish Fighter"] =
        id: "Elvish Fighter"
        hitpoints: 28


describe "Unit", ->

    cfg =
        id: "Kalenz"
        type: "Elvish Fighter"

    describe "get unit.type", ->

        it "Elvish Fighter", ->
            unit = Unit(unit_map, cfg)
            assert.are.equal "Elvish Fighter", unit.type

    describe "getters", ->

        it "unit.x", ->
            unit = Unit(unit_map, cfg)
            -- assert
            unit_map\place_unit(unit, loc.x, loc.y)
            assert.are.equal loc.x, unit.x

        it "unit.y", ->
            unit = Unit(unit_map, cfg)
            -- assert unit_map\place_unit(unit, loc.x, loc.y)
            assert.are.equal loc.y, unit.y

        it "unit.loc", ->
            unit = Unit(unit_map, cfg)
            -- assert unit_map\place_unit(unit, loc.x, loc.y)
            assert.are.equal loc, unit.loc
