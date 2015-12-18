

wsl_action
    id: "store_time_of_day"
    description: "Stores time of day information from the current scenario into a WSL variable container.
x, y: Location to store the time for. Time areas matter; illumination does not. If this is omitted, the global (location-independent) time is stored."

    action: (cfg, kernel) ->




    scheme:
        variable:
            description: "(default='time_of_day') name of the container on which to store the information. The container will be filled with the same attributes found on TimeWSL."
            default: "time_of_day"
        turn:
            description: "(defaults to the current turn number) changes the turn number for which time of day information should be retrieved."
