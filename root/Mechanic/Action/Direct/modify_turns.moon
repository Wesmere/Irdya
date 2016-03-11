
wsl_action
    id: "modify_turns"
    description: "Modifies the turn limit in the middle of a scenario."

    action: (cfg) ->
        print("'modify_turns' not implemented yet.")

    scheme:
        value:
            description: "the new turn limit."
        add:
            description: "if used instead of value, specifies the number of turns to add to the current limit (can be negative)."
        current:
            description: "changes the current turn number after applying turn limit modifications, if any. It is not possible to change the turn number to exceed the turn limit (1 <= current turns <= max turns)."
