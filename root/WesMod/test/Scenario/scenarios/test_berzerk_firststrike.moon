-- Tests the order of hits that results when a spearman is attacked by an ulfserker.
-- If first strike and berzerk interact correctly, should repeat DADADAA

ADD_SYMBOL = (S) ->
    VARIABLE "SEQUENCE", "#{SEQUENCE}#{S}"
    VARIABLE_OP "LEN", "string_length", SEQUENCE
    -- {IF_VAR LEN equals 29 (
    --     [then]
    --         {RETURN ({VARIABLE_CONDITIONAL SEQUENCE equals "DADADAADADADAADADADAADADADAAD"})}
    --     [/then]
    -- )}
    if LEN == 29
        RETURN VARIABLE_CONDITIONAL, "SEQUENCE", "equals", "DADADAADADADAADADADAADADADAAD"


GENERIC_UNIT_TEST "test_berzerk_firststrike", ->
    event
        name:{"AttackerMisses", "AttackerHits"}
        first_time_only:false
        command: ->
            ADD_SYMBOL "A"

    event
        name:{"DefenderMisses", "DefenderHits"}
        first_time_only:false
        command: ->
            ADD_SYMBOL "D"

    event
        name: "Start"
        command: ->
            VARIABLE "SEQUENCE", ""
            unit UNIT 1, "Dwarvish Ulfserker", 7, 4, {hitpoints:100}
            unit UNIT 2, "Spearman", 8, 4, {hitpoints:100}
            do_command
                attack:
                    weapon: 0
                    defender_weapon: 0
                    source:
                        loc:{7,4}
                    destination:
                        loc:{8,4}
