wsl_handler
    id: "race"
    scope: "Units"
    on_scan: (cfg) ->
    on_load: (cfg) ->
        state.Units.race[cfg.id] = cfg

    description: [[The [race] table is used to make shortcuts to describe units with similar names. Units from the same advancement tree should generally have the same race. Also, units with the same race should generally be recruitable by the same sides/factions.]]

    scheme:
        id:
            description: [[ID for this race. Units with the attribute race=id will be assigned this race. In older versions of WML, the value of the name key was used as id if the id field was missing, but this is no longer the case.]]
        plural_name:
            description: [[user-visible name for its people (e.g. "Merfolk" or "Elves"). Currently only used in the in-game help.]]

        male_name:
            description: [[user-visible name for the race of the male units (e.g. "Merman"). Currently only used in the in-game unit status.]]

        female_name:
            description: [[user-visible name for the race of the female units (e.g. "Mermaid"). Currently only used in the in-game unit status.]]

        name:
            description: [[the default value for the three keys above. The 'name' key is the default for 'male_name' and 'female_name'. 'id' and 'plural_name' must be supplied.]]

        description:
            description: [[description of this race, used in the race page of the in-game help. Note: currently not used by all mainline races because their descriptions are not ready. But this is already supported by the engine.]]

--male_names, female_names: lists of names (i.e. non-translatable strings). They are inputted into the Markov name generator to generate random names. male_names describes units with gender=male; female_names describes units with gender=female.

        markov_chain_size:
            description: [[(default 2) number of letters per "syllable". "Syllables" are groupings of names that the Markov name generator uses to determine names. It does this by running a probability algorithm to guess from the name list which syllables fit well together, which can start or end a name, etc.]]

        num_traits:
            description: [[is the number of non-repeating traits each unit of this race can be assigned.]]

        ignore_global_traits:
            description: [['yes' or 'no' (default). Determines whether global traits (see [traits] above) are applied.]]

        undead_variation:
            description: [[sets the default undead variation for members of this race.]]

        topic:
            description: [[describes extra help topics for this race.]]
            is_list: true
            type: "table"
            scheme: Topic

        trait:
            description: [[describes a trait for this race. See above for syntax.]]
            is_list: true
            type: "table"
            scheme: Trait
