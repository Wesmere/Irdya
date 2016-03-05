
HasGetters = require "HasGetters"


describe "HasGetters", ->

    describe "Lookup Table", ->

        Object_w_Table = class extends HasGetters
            getters:
                key1: => "value1"
                key2: => "value2"

        object_w_table = Object_w_Table!

        it "value1", ->
            assert.are.equal "value1", object_w_table.key1

        it "value2", ->
            assert.are.equal "value2", object_w_table.key2


    describe "Lookup Function", ->

        Object_w_Function = class extends HasGetters
            getters: (key) =>
                switch key
                    when "key1"
                        "value1"
                    when "key2"
                        "value2"
                    else nil

        object = Object_w_Function!

        it "value1", ->
            assert.are.equal "value1", object.key1

        it "value2", ->
            assert.are.equal "value2", object.key2
