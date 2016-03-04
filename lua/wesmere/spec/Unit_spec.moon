
Unit = require "Unit"

describe "Unit", ->

    cfg =
        id: "Kalenz"

    unit = Unit(cfg)

    describe "x getter", ->

        it "hmmm", ->
            assert.are.equal unit.x, 99
