-- This series of tests checks that scenarios are ending as appropriate.

TEST_CHECK_VICTORY_SCEN = (ID, DC1, DC2, DC3, DC4, TWO_THREE_CONTROLLER, VWED, EVENTS) ->
    test
        name:"Unit Test #{ID}"
        map_data:"move_skip_sighted"
        turns:3
        id:ID
        random_start_time:false
        victory_when_enemies_defeated:VWED

        time:{DAWN}

        side:
            side:1
            controller:"human"
            name:"Alice"
            type:"Elvish Archer"
            id:"alice"
            fog:false
            team_name:"West"
            defeat_condition:DC1
            unit: UNIT 1, "Elvish Fighter", 1, 1, {id:"t1"}
        side:
            side:2
            controller:TWO_THREE_CONTROLLER
            name:"Bob"
            type:"Orcish Grunt"
            id:"bob"
            fog:false
            team_name:"East"
            defeat_condition:DC2
            unit: UNIT 2, "Orcish Archer", 1, 2, {id:"t2"}
        side:
            side:3
            controller:TWO_THREE_CONTROLLER
            name:"Dave"
            type:"Dwarvish Fighter"
            id:"dave"
            fog:false
            team_name:"East"
            defeat_condition:DC3
            unit: UNIT 3, "Dwarvish Thunderer", 1, 3, {id:"t3"}
        side:
            side:4
            controller:"human"
            name:"Charlie"
            type:"Chocobone"
            id:"charlie"
            fog:false
            team_name:"West"
            defeat_condition:DC4
            unit: UNIT 4, "Dark Adept", 1, 4, {id:"t4"}

        Prestart: EVENTS


KILL_SIDE = (SIDE, CR) ->
    kill
        side:SIDE
        can_recruit:CR


FAIL_IF_NO_END = (ACTIONS) ->
    event
        name:"Start"
        command:->
            ACTIONS!
            end_turn!
    event
        name:"Side2Turn1"
        command: -> FAIL!


-- TEST_KILL_SIDES_TWO_THREE = (ID, ID_yes, ID_no, ID_yesno, DC1, DC2, DC3, DC4, CON, VWED) ->
--     TEST_CHECK_VICTORY_SCEN ({ID} {ID_yes}) {DC1} {DC2} {DC3} {DC4} {CON} {VWED} (
--         {FAIL_IF_NO_END (
--             {KILL_SIDE "2,3" "yes"} --kill leaders of side 2,3
--         )}
--     )}

--     {TEST_CHECK_VICTORY_SCEN ({ID} {ID_no}) {DC1} {DC2} {DC3} {DC4} {CON} {VWED} (
--         {FAIL_IF_NO_END (
--             {KILL_SIDE "2,3" "no"} --kill units but not leaders of side 2,3
--         )}
--     )}

--     {TEST_CHECK_VICTORY_SCEN ({ID} {ID_yesno}) {DC1} {DC2} {DC3} {DC4} {CON} {VWED} (
--         {FAIL_IF_NO_END (
--             kill:
--                 side:2,3
--         )}
--     )}
-- --enddef

-- {TEST_CHECK_VICTORY_SCEN check_victory_basic_timeout "no_leader_left" "no_leader_left" "no_leader_left" "no_leader_left" "human" "yes" ()}
-- {TEST_CHECK_VICTORY_SCEN check_victory_basic_macro_check "no_leader_left" "no_leader_left" "no_leader_left" "no_leader_left" "human" "yes" ({FAIL_IF_NO_END ()})}

-- {TEST_KILL_SIDES_TWO_THREE check_victory_basic  "_fail" "_two" "no_leader_left" "no_leader_left" "no_leader_left" "no_leader_left" "human" "yes"}
-- {TEST_KILL_SIDES_TWO_THREE check_victory_basic_ai  "_fail" "_two" "no_leader_left" "no_leader_left" "no_leader_left" "no_leader_left" "ai" "yes"}

-- {TEST_KILL_SIDES_TWO_THREE check_victory_one_no_units "_fail_one" "_fail_two"  "no_leader_left" "no_units_left" "no_leader_left" "no_leader_left" "human" "yes"}
-- {TEST_KILL_SIDES_TWO_THREE check_victory_two_no_units "_fail_one" "_fail_two"  "no_leader_left" "no_units_left" "no_units_left" "no_leader_left" "human" "yes"}

-- {TEST_CHECK_VICTORY_SCEN check_victory_always_one "always" "no_leader_left" "no_leader_left" "always" "human" "yes" ()}
-- {TEST_CHECK_VICTORY_SCEN check_victory_always_two "always" "no_leader_left" "no_leader_left" "no_leader_left" "human" "yes" (
--     {FAIL_IF_NO_END (
--         {KILL_SIDE "4" "yes"}
--     )}
-- )}
-- {TEST_CHECK_VICTORY_SCEN check_victory_always_no_units_fail "always" "no_leader_left" "no_leader_left" "no_units_left" "human" "yes" (
--     {FAIL_IF_NO_END (
--         {KILL_SIDE "4" "yes"}
--     )}
-- )}
-- {TEST_CHECK_VICTORY_SCEN check_victory_always_no_units "always" "no_leader_left" "no_leader_left" "no_units_left" "human" "yes" (
--     {FAIL_IF_NO_END (
--         kill:
--             side:4
--     )}
-- )}

-- {TEST_CHECK_VICTORY_SCEN check_victory_always_fail "always" "no_leader_left" "no_leader_left" "no_leader_left" "human" "yes" ({FAIL_IF_NO_END ()})}

-- {TEST_KILL_SIDES_TWO_THREE check_victory_never_fail "_one" "_two" "_three" "no_leader_left" "never" "no_leader_left" "no_leader_left" "human" "yes"}
-- {TEST_CHECK_VICTORY_SCEN check_victory_never_pass "no_leader_left" "always" "never" "no_leader_left" "human" "yes" (
--     {FAIL_IF_NO_END (
--         {KILL_SIDE "1,4" "yes"}
--     )}
-- )}
-- {TEST_CHECK_VICTORY_SCEN check_victory_never_ai_fail "no_leader_left" "always" "never" "no_leader_left" "ai" "yes" (
--     {FAIL_IF_NO_END (
--         {KILL_SIDE "1,4" "yes"}
--     )}
-- )}

-- //TODO:" Add checks for victory_when_enemies_defeated ": no
