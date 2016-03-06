
wesmods = require "wesmods"

describe "Wesmods", ->

    describe "Load Root", ->

        it "root", ->
            wesmods.load_wesmod_by_path("../../root")

    describe "Scan Root", ->

        pending "Testroot", ->
            wesmods.scan_root("../../root")
