----
-- Ability macros to be included in the SingleWSL description of a unit.

-- Canned definition of the heal+4 ability to be included in an [abilities] clause.
ABILITY_HEALS =
    heals:
        value: 4
        id: "healing"
        affect_allies: true
        name: _ "heals +4"
        female_name: _ "female^heals +4"
        description: _ [[Allows the unit to heal adjacent allied units at the beginning of our turn.

A unit cared for by this healer may heal up to 4 HP per turn, or stop poison from taking effect for that turn.
A poisoned unit cannot be cured of its poison by a healer, and must seek the care of a village or a unit that can cure.]]
        affect_self: false
        poison: "slowed"
        affect_adjacent: {}

ABILITY_EXTRA_HEAL =
    heals:
        value: 8
        id: "healing"
        affect_allies: true
        name: _ "heals +8"
        female_name: _ "female^heals +8"
        description: _ [[This unit combines herbal remedies with magic to heal units more quickly than is normally possible on the battlefield.

A unit cared for by this healer may heal up to 8 HP per turn, or stop poison from taking effect for that turn.
A poisoned unit cannot be cured of its poison by a healer, and must seek the care of a village or a unit that can cure.]]
        affect_self: false
        poison: "slowed"
        affect_adjacent: {}

-- Canned definition of the cure-poison ability to be included
-- in an [abilities] clause.
ABILITY_UNPOISON =
    heals:
        affect_allies: true
        id: "curing"
        name: _ "cures"
        female_name: _ "female^cures"
        description: _ [[A curer can cure a unit of poison, although that unit will receive no additional "healing" on the turn it is cured of the poison.]]
        affect_self: false
        poison: "cured"
        affect_adjacent: {}

-- Canned definition of the cure ability (which entails heal+8) to be
-- included in an [abilities] clause..
ABILITY_CURES = { ABILITY_UNPOISON, ABILITY_EXTRA_HEAL }

-- Canned definition of the Regenerate ability to be included in an [abilities]
-- clause.
ABILITY_REGENERATES =
    regenerate:
        value: 8
        id: "regenerates"
        name: _ "regenerates"
        female_name: _ "female^regenerates"
        description: _ "The unit will heal itself 8 HP per turn. If it is poisoned, it will remove the poison instead of healing."
        affect_self: true
        poison: "cured"

-- Canned definition of the Steadfast ability to be included in an [abilities]
-- clause.
ABILITY_STEADFAST =
    resistance:
        id: "steadfast"
        multiply: 2
        max_value: 50
        -- applies to any type if we leave it out
        -- apply_to: {"blade","pierce","impact","fire","cold","arcane"}
        filter_base_value:
            greater_than: 0
            less_than: 50

        name: _ "steadfast"
        female_name: _ "female^steadfast"
        description: _ "This unit’s resistances are doubled, up to a maximum of 50%, when defending. Vulnerabilities are not affected."
        affect_self: true
        active_on: "defense"

-- Canned definition of the Leadership (level 1) ability to be included in an
-- [abilities] clause.
ABILITY_LEADERSHIP_LEVEL_1 =
    leadership:
        id: "leadership"
        value: 25
        cumulative: false
        name: _ "leadership"
        female_name: _ "female^leadership"
        description: _ [[This unit can lead our own units that are next to it, making them fight better.

Adjacent own units of lower level will do more damage in battle. When a unit adjacent to, of a lower level than, and on the same side as a unit with Leadership engages in combat, its attacks do 25% more damage times the difference in their levels.]]
        affect_self: false
        affect_adjacent:
            filter:
                level: 0

-- Canned definition of the Leadership (level 2) ability to be included in an
-- [abilities] clause.
ABILITY_LEADERSHIP_LEVEL_2 =
    leadership:
        id: "leadership"
        value: 50
        cumulative: false
        name: _ "leadership"
        female_name: _ "female^leadership"
        description: _ [[This unit can lead our own units that are next to it, making them fight better.

Adjacent own units of lower level will do more damage in battle. When a unit adjacent to, of a lower level than, and on the same side as a unit with Leadership engages in combat, its attacks do 25% more damage times the difference in their levels.]]
        affect_self: false
        affect_adjacent:
            filter:
                level: 0
    leadership:
        id: "leadership"
        value: 25
        cumulative: false
        affect_self: false
        affect_adjacent:
            filter:
                level: 1

-- Canned definition of the Leadership (level 3) ability to be included in an
-- [abilities] clause.
ABILITY_LEADERSHIP_LEVEL_3 =
    leadership:
        id: "leadership"
        value: 75
        cumulative: false
        name: _ "leadership"
        female_name: _ "female^leadership"
        description: _ [[This unit can lead our own units that are next to it, making them fight better.

Adjacent own units of lower level will do more damage in battle. When a unit adjacent to, of a lower level than, and on the same side as a unit with Leadership engages in combat, its attacks do 25% more damage times the difference in their levels.]]
        affect_self: false
        affect_adjacent:
            filter:
                level: 0
    leadership:
        id: "leadership"
        value: 50
        cumulative: false
        affect_self: false
        affect_adjacent:
            filter:
                level: 1
    leadership:
        id: "leadership"
        value: 25
        cumulative: false
        affect_self: false
        affect_adjacent:
            filter:
                level: 2

-- Canned definition of the Leadership (level 4) ability to be included in an
-- [abilities] clause.
ABILITY_LEADERSHIP_LEVEL_4 =
    leadership:
        id: "leadership"
        value: 100
        cumulative: false
        name: _ "leadership"
        female_name: _ "female^leadership"
        description: _ [[This unit can lead our own units that are next to it, making them fight better.

Adjacent own units of lower level will do more damage in battle. When a unit adjacent to, of a lower level than, and on the same side as a unit with Leadership engages in combat, its attacks do 25% more damage times the difference in their levels.]]
        affect_self: false
        affect_adjacent:
            filter:
                level: 0
    leadership:
        id: "leadership"
        value: 75
        cumulative: false
        affect_self: false
        affect_adjacent:
            filter:
                level: 1
    leadership:
        id: "leadership"
        value: 50
        cumulative: false
        affect_self: false
        affect_adjacent:
            filter:
                level: 2
    leadership:
        id: "leadership"
        value: 25
        cumulative: false
        affect_self: false
        affect_adjacent:
            filter:
                level: 3

-- Canned definition of the Leadership (level 5) ability to be included in an
-- [abilities] clause.
ABILITY_LEADERSHIP_LEVEL_5 =
    leadership:
        id: "leadership"
        value: 125
        cumulative: false
        name: _ "leadership"
        female_name: _ "female^leadership"
        description: _ [[This unit can lead our own units that are next to it, making them fight better.

Adjacent own units of lower level will do more damage in battle. When a unit adjacent to, of a lower level than, and on the same side as a unit with Leadership engages in combat, its attacks do 25% more damage times the difference in their levels.]]
        affect_self: false
        affect_adjacent:
            filter:
                level: 0
    leadership:
        id: "leadership"
        value: 100
        cumulative: false
        affect_self: false
        affect_adjacent:
            filter:
                level: 1
    leadership:
        id: "leadership"
        value: 75
        cumulative: false
        affect_self: false
        affect_adjacent:
            filter:
                level: 2
    leadership:
        id: "leadership"
        value: 50
        cumulative: false
        affect_self: false
        affect_adjacent:
            filter:
                level: 3
    leadership:
        id: "leadership"
        value: 25
        cumulative: false
        affect_self: false
        affect_adjacent:
            filter:
                level: 4

-- Canned definition of the Skirmisher ability to be included in an [abilities]
-- clause.
ABILITY_SKIRMISHER =
    skirmisher:
        id: "skirmisher"
        name: _ "skirmisher"
        female_name: _ "female^skirmisher"
        description: _ "This unit is skilled in moving past enemies quickly, and ignores all enemy Zones of Control."
        affect_self: true

-- Canned definition of the Illuminates ability to be included in an
-- [abilities] clause.
ABILITY_ILLUMINATES =
    illuminates:
        id: "illumination"
        value: 25
        max_value: 25
        cumulative: false
        name: _ "illuminates"
        female_name: _ "female^illuminates"
        description: _ [[This unit illuminates the surrounding area, making lawful units fight better, and chaotic units fight worse.

Any units adjacent to this unit will fight as if it were dusk when it is night, and as if it were day when it is dusk.]]
        affect_self: true

-- Canned definition of the TELEPORT ability to be included in an
-- [abilities] clause.
ABILITY_TELEPORT =
    teleport:
        id: "teleport"
        name: _ "teleport"
        female_name: _ "female^teleport"
        description: _ "This unit may teleport between any two empty villages owned by its side using one of its moves."
        tunnel:
            id: "village_teleport"
            source:
                terrain: "*^V*"
                owner_side: "teleport_unit.side"
                not:
                    filter:
                        not:
                            id: "teleport_unit.id"
            target:
                terrain: "*^V*"
                owner_side: "teleport_unit.side"
                not:
                    filter: {}
            filter:
                ability: "teleport"

-- Canned definition of the Ambush ability to be included in an
-- [abilities] clause.
ABILITY_AMBUSH =
    hides:
        id: "ambush"
        name: _ "ambush"
        female_name: _ "female^ambush"
        name_inactive: _ "ambush"
        female_name_inactive: _ "female^ambush"
        description: _ [[This unit can hide in forest, and remain undetected by its enemies.

Enemy units cannot see this unit while it is in forest, except if they have units next to it. Any enemy unit that first discovers this unit immediately loses all its remaining movement.]]
        description_inactive: _ [[This unit can hide in forest, and remain undetected by its enemies.

Enemy units cannot see this unit while it is in forest, except if they have units next to it. Any enemy unit that first discovers this unit immediately loses all its remaining movement.]]
        affect_self: true
        filter:
            filter_location:
                terrain: "*^F*"

-- Canned definition of the Nightstalk ability to be included in an
-- [abilities] clause.
ABILITY_NIGHTSTALK =
    hides:
        id: "nightstalk"
        name: _ "nightstalk"
        female_name: _ "nightstalk"
        description: _ [[The unit becomes invisible during night.

Enemy units cannot see this unit at night, except if they have units next to it. Any enemy unit that first discovers this unit immediately loses all its remaining movement.]]
        name_inactive: _ "nightstalk"
        female_name_inactive: _ "female^nightstalk"
        description_inactive: _ [[The unit becomes invisible during night.

Enemy units cannot see this unit at night, except if they have units next to it. Any enemy unit that first discovers this unit immediately loses all its remaining movement.]]
        affect_self: true
        filter:
            filter_location:
                time_of_day: "chaotic"

-- Canned definition of the Concealment ability to be included in an
-- [abilities] clause.
ABILITY_CONCEALMENT =
    hides:
        id: "concealment"
        name: _ "concealment"
        female_name: _ "female^concealment"
        description: _ [[This unit can hide in villages (with the exception of water villages), and remain undetected by its enemies, except by those standing next to it.

Enemy units can not see this unit while it is in a village, except if they have units next to it. Any enemy unit that first discovers this unit immediately loses all its remaining movement.]]
        name_inactive: _ "concealment"
        female_name_inactive: _ "female^concealment"
        description_inactive: _ [[This unit can hide in villages (with the exception of water villages), and remain undetected by its enemies, except by those standing next to it.

Enemy units can not see this unit while it is in a village, except if they have units next to it. Any enemy unit that first discovers this unit immediately loses all its remaining movement.]]
        affect_self: true
        filter:
            filter_location:
                terrain: "*^V*"

-- Canned definition of the Submerge ability to be included in an
-- [abilities] clause.
ABILITY_SUBMERGE =
    hides:
        id: "submerge"
        name: _ "submerge"
        female_name: _ "female^submerge"
        description: _ [[This unit can hide in deep water, and remain undetected by its enemies.

Enemy units cannot see this unit while it is in deep water, except if they have units next to it. Any enemy unit that first discovers this unit immediately loses all its remaining movement.]]
        name_inactive: _ "submerge"
        female_name_inactive: _ "female^submerge"
        description_inactive: _ [[This unit can hide in deep water, and remain undetected by its enemies.

Enemy units cannot see this unit while it is in deep water, except if they have units next to it. Any enemy unit that first discovers this unit immediately loses all its remaining movement.]]
        affect_self: true
        filter:
            filter_location:
                terrain: "Wo*^*"

-- Canned definition of the Feeding ability to be included in an
-- [abilities] clause.  Note: this is deliberately unbalanced WSL,
-- in order to close the abilities clause then insert the event
-- then reopen the abilities clause.
-- wsllint: unbalanced-on
ABILITY_FEEDING =
    dummy:
        id: "feeding"
        name: _ "feeding"
        female_name: _ "female^feeding"
        description: _ "This unit gains 1 hitpoint added to its maximum whenever it kills a unit, except units that are immune to plague."
    event:
        id: "ability_feeding_die"
        name: "die"
        first_time_only: false

        filter:
            not:
                status: "unplagueable"

        filter_second:
            ability: "feeding"

        command: ->
            unstore_unit
                variable: second_unit
                -- {COLOR_HEAL}
                text: _ "+1 max HP"
                find_vacant: false

            object
                silent: true
                duration: "forever"
                filter:
                    x: x2
                    y: y2

            effect
                apply_to: "hitpoints"
                increase_total: 1
                increase: 1

-- Definitions of the regeneration abilities used by the Elementals
ABILITY_FORESTHOME =
    regenerate:
        filter_self:
            filter_location:
                terrain: {"Gs^Fp", "Gg^Fet", "Gs^Ft", "Aa^Fpa"}
        value: 3
        id: "foresthome"
        name: _"foresthome"
        description: _"This unit will regenerate 3 HP when in forest."
        affect_self: true

ABILITY_WATERHOME =
    regenerate:
        filter_self:
            filter_location:
                terrain: {"Wo", "Ww"}
        value: 3
        id: "waterhome"
        name: _"waterhome"
        description: _"This unit will regenerate 3 HP when in deep or shallow water."
        affect_self: true

ABILITY_DESERTHOME =
    regenerate:
        filter_self:
            filter_location:
                terrain: {"Dd", "Ds"}
        value: 3
        id: "deserthome"
        name: _"deserthome"
        description: _"This unit will regenerate 3 HP when in desert or sand."
        affect_self: true

ABILITY_MTNHOME =
    regenerate:
        filter_self:
            filter_location:
                terrain: {"Mm"}
        value: 3
        id: "mountainhome"
        name: _"mountainhome"
        description: _"This unit will regenerate 3 HP when on mountains."
        affect_self: true

-- abilities used by the Aragwaithi units
ABILITY_PROTECTION_LEVEL_2 =
    resistance:
        id: "protection"
        add: 20
        max_value: 50
        -- apply_to: {"blade", "pierce", "impact", "fire", "cold", "arcane"}
        name: _"protection"
        description: _"Adjacent units of lower level from this side receive a +20% bonus to all resistances (up to a maximum of 50%)."
        affect_self: false
        affect_adjacent:
            adjacent: {"n", "ne", "se", "s", "sw", "nw"}
            filter:
                level: 0
                or:
                    level: 1

ABILITY_PROTECTION_LEVEL_3
    resistance:
        id: "protection"
        add: 20
        max_value: 50
        -- apply_to: {"blade", "pierce", "impact", "fire", "cold", "arcane"}
        name: _"protection"
        description: _"Adjacent units of lower level from this side receive a +20% bonus to all resistances (up to a maximum of 50%)."
        affect_self: false
        affect_adjacent:
            adjacent: {"n", "ne", "se", "s", "sw", "nw"}
            filter:
                level: 0
                or:
                    level: 1
                or:
                    level: 2

ABILITY_PROTECTION_LEVEL_4 =
    resistance:
        id: "protection"
        add: 20
        max_value: 50
        -- apply_to: {"blade", "pierce", "impact", "fire", "cold", "arcane"}
        name: _"protection"
        description: _"Adjacent units of lower level from this side receive a +20% bonus to all resistances (up to a maximum of 50%)."
        affect_self: false
        affect_adjacent:
            adjacent: {"n", "ne", "se", "s", "sw", "nw"}
            filter:
                level: 0
                or:
                    level: 1
                or:
                    level: 2
                or:
                    level: 3
