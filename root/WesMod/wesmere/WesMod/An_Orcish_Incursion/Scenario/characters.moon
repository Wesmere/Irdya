export ^

CHARACTER_STATS_ERLORNAS = (unit) ->
    with unit
        .type="Elvish Lord"
        .id="Erlornas"
        .name= _ "Erlornas"
        .can_recruit=true
        .unrenamable=true

CHARACTER_STATS_LINAERA = (unit) ->
    with unit
        .type="Silver Mage"
        .id="Linaera"
        .name= _ "Linaera"
        .gender="female"
        .can_recruit=true
        .unrenamable=true
        .modifications={TRAIT_LOYAL}
