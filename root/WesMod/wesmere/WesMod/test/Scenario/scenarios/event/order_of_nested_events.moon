-- The purpose of this test is to check that a First in, First out
-- order of events is being respected.
--
-- A variable X is set to 1 during prestart, and just after
-- a start event is registered which would set it to 0.
--
-- Within the scenario tag, a start event is also registered
-- to return (X == 1).
--
-- If the "nested" event runs before the outer level start event,
-- we fail the test. The outer event should run first because
-- all of the events in [scenario] are registered before any
-- of them is executed.

GENERIC_UNIT_TEST "order_of_nested_events", ->
    event
        name:"Prestart"
        command: ->
            VARIABLE "X", 1

            event
                name:"Start"
                command: ->
                    VARIABLE "X", 0

    event
        name:"Start"
        command: ->
            RETURN VARIABLE_CONDITIONAL "X", "equals", 1
