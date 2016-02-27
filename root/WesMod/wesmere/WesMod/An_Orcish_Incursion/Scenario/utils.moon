HINT = (MESSAGE, objective) ->
    with objective
        .notes_string= _ "Hint:"
        .note =
            description: MESSAGE

RECALL_ADVISOR = () ->
    if have_unit
            side:1
            role:"advisor"
            search_recall_list:true
        -- Recall an advisor if we have one to do so
        recall role:advisor
    elseif have_unit -- Else, make a new advisor from an elf unit
            side:1
            race:"elf"
            not:
                can_recruit:true
            search_recall_list:true
        role
            race:"elf"
            not:
                can_recruit:true
            role:"advisor"
        recall role:"advisor"
    else -- If that fails too, make a brand new advisor
        unit
            type:"Elvish Fighter"
            side:1
            role:"advisor"
            animate:true
            placement:"leader"
