-- This unit test defines a WML object based implementation of the "feeding" ability
-- and checks that it works. What is being tested here, beyond what is tested in
-- test_unit_map and other scenarios that test the attack pathway, is that
-- - the die event works
-- - objects attach to units by id correctly
-- - abilities can be properly detected in filters
-- - abillities which add other objects works
-- - this impl of feeding works

STR_FEEDING = "foo"

STR_FEEDING_EFFECT = "bar"

STR_FEEDING_DESCRIPTION = "baz"


GENERIC_UNIT_TEST "feeding", ->

    TEST_FEEDING = (ID, EXPECTED_INCREASE) ->

        store_unit
            filter:
                id: ID
            variable: "Killer"

        VARIABLE "victim_x", Killer.x
        VARIABLE_OP "victim_x", "sub", 1
        VARIABLE "victim_y", Killer.y

        VARIABLE "victim_side", 3
        VARIABLE_OP "victim_side", "sub", Killer.side

        VARIABLE "Killer_start_hp", Killer.hitpoints

        terrain
            x:victim_x
            y:victim_y
            terrain: _"Xv"
        unit UNIT victim_side, "Elvish Archer", victim_x, victim_y, {hitpoints:1}
        do_command
            attack:
                weapon: 0
                defender_weapon: 0
                source:{Killer.x,Killer.y}
                destination:{victim_x,victim_y}

        store_unit
            filter:
                id: ID
            variable:"Killer"

        VARIABLE_OP Killer_start_hp, "add", EXPECTED_INCREASE

        ASSERT VARIABLE_CONDITIONAL, "Killer.hitpoints", "equals", Killer_start_hp

    event
        id: "ability_feeding_die"
        name: "Die"
        first_time_only: false
        filter:
            not:
                filter_wml:
                    status:
                        not_living:true
        filter_second:
            ability:"feeding"
        command: ->
            unstore_unit
                variable: "second_unit"
                --- @todo COLOR_HEAL
                text: STR_FEEDING_EFFECT
                find_vacant: false
            object
                silent: true
                duration: "forever"
                filter:
                    loc:{x2,y2}
                effect:
                    apply_to: "hitpoints"
                    increase_total: 1
                    increase: 1


    event
        name: "Start"
        command: ->
            object
                id: "feeding_object"
                silent: true
                effect:
                    apply_to: "new_ability"
                    abilities:
                        dummy:
                            id: "feeding"
                            name: STR_FEEDING
                            female_name: STR_FEEDING
                            description: STR_FEEDING_DESCRIPTION
                filter:
                    id: "bob"


    event
        name:"Start"

        command: ->
            TEST_FEEDING "alice", 0
            TEST_FEEDING "alice", 0
            TEST_FEEDING "alice", 0

            end_turn!


    event
        name:"Side2Turn1"

        command: ->
            TEST_FEEDING "bob", 1
            TEST_FEEDING "bob", 1
            TEST_FEEDING "bob", 1

            store_unit
                filter:
                    id: "bob"
                variable: "Bob"

            VARIABLE_OP "Bob.experience", "add", 50

            unstore_unit
                variable: "Bob"

            TEST_FEEDING "bob", 1
            TEST_FEEDING "bob", 1
            TEST_FEEDING "bob", 1

            SUCCEED!

