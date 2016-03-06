
wesmere = require "init"

describe "Wesmere module", ->

    describe "Setup", ->

        pending "Load root", ->
            wesmere.load_wesmod_by_path("../root")

        pending "Load testmod", ->
            wesmere.load_wesmod("test")

    describe "run test suite", ->

        -- test_scenarios = wesmere.test_scenarios


        --for scenario in *test_scenarios

        --    pending "Running #{scenario.name}", ->

        --        wesmere.start_scenario(scenario.id)
