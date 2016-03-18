-- This test checks that units placed off-map end up
-- in the recall list.

GENERIC_UNIT_TEST "units_offmap_goto_recall", ->
    event
        name: "Start"
        command: ->
            unit
                x: -10
                y: -10
                type: "Orcish Grunt"
                side: 1
                id: "Charlie"
                can_recruit: false
            ASSERT not have_unit
                id: "Charlie"
                can_recruit: false
                side: 1
                search_recall_list: false
            RETURN have_unit
                id: "Charlie"
                can_recruit: false
                side: 1
                search_recall_list: true
