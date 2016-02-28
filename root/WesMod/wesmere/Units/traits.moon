
-- Traits for the modifications clause of SingleWSL descriptions

-- Units with trait Loyal have no upkeep.
TRAIT_LOYAL =
    trait:
        id: "loyal"
        male_name: _ "loyal"
        female_name: _ "female^loyal"
        description: _ "Zero upkeep"
        effect:
            apply_to: "loyal"

-- Units with trait Undead cannot be drained, poisoned, or plagued.
TRAIT_UNDEAD =
    trait:
        id: "undead"
        availability: "musthave"
        male_name: _ "undead"
        female_name: _ "female^undead"
        description: _ "Immune to drain, poison, and plague"
        effect:
            apply_to: "status"
            add: "unpoisonable"
        effect:
            apply_to: "status"
            add: "undrainable"
        effect:
            apply_to: "status"
            add: "unplagueable"

-- Units with trait Mechanical cannot be drained, poisoned, or plagued.
TRAIT_MECHANICAL =
    trait:
        id: "mechanical"
        availability: "musthave"
        male_name: _ "mechanical"
        female_name: _ "female^mechanical"
        description: _ "Immune to drain, poison, and plague"
        effect:
            apply_to: "status"
            add: "unpoisonable"
        effect:
            apply_to: "status"
            add: "undrainable"
        effect:
            apply_to: "status"
            add: "unplagueable"

-- Units with trait Elemental cannot be drained, poisoned, or plagued.
TRAIT_ELEMENTAL =
    trait:
        id: "elemental"
        availability: "musthave"
        male_name: _ "elemental"
        female_name: _ "female^elemental"
        description: _ "Immune to drain, poison, and plague"
        effect:
            apply_to: "status"
            add: "unpoisonable"
        effect:
            apply_to: "status"
            add: "undrainable"
        effect:
            apply_to: "status"
            add: "unplagueable"

-- Units with trait Strong get a +1 increment in hitpoints and melee damage.
TRAIT_STRONG =
    trait:
        id: "strong"
        male_name: _ "strong"
        female_name: _ "female^strong"
        effect:
            apply_to: "attack"
            range: "melee"
            increase_damage: 1
        effect:
            apply_to: "hitpoints"
            increase_total: 1

-- Units with trait Dextrous get a +1 to ranged damage.
TRAIT_DEXTROUS =
    trait:
        id: "dextrous"
        male_name: _ "dextrous"
        female_name: _ "female^dextrous"
        effect:
            apply_to: "attack"
            range: "ranged"
            increase_damage: 1

-- Units with trait Quick have +1 movement and 5% less hitpoints.
TRAIT_QUICK =
    trait:
        id: "quick"
        male_name: _ "quick"
        female_name: _ "female^quick"
        effect:
            apply_to: "movement"
            increase: 1
        effect:
            apply_to: "hitpoints"
            increase_total: "-5%"

-- Units with trait Intelligent get a 20% decrease in XP required to advance.
TRAIT_INTELLIGENT =
    trait:
        id: "intelligent"
        male_name: _ "intelligent"
        female_name: _ "female^intelligent"
        effect:
            apply_to: "max_experience"
            increase: "-20%"

-- Units with trait Resilient get 4 more HP plus 1 per level.
TRAIT_RESILIENT =
    trait:
        id: "resilient"
        male_name:  _ "resilient"
        female_name:  _ "female^resilient"
        effect:
            apply_to: "hitpoints"
            increase_total: 4
        effect:
            apply_to: "hitpoints"
            times: "per level"
            increase_total: 1

-- Units with trait Healthy get 1 more HP plus 1 per level and always rest heal.
TRAIT_HEALTHY =
    trait:
        id: "healthy"
        male_name: _ "healthy"
        female_name: _ "female^healthy"
        description: _ "Always rest heals"
        effect:
            apply_to: "healthy"
        effect:
            apply_to: "hitpoints"
            increase_total: 1
        effect:
            apply_to: "hitpoints"
            times: "per level"
            increase_total: 1

-- Units with trait Fearless fight normally during unfavorable day/night times.
TRAIT_FEARLESS =
    trait:
        id: "fearless"
        male_name: _ "fearless"
        female_name: _ "female^fearless"
        description: _ "Fights normally during unfavorable times of day/night"
        effect:
            apply_to: "fearless"

-- A clone of the above that would be generated even if random
-- trait generation is not used. This is needed for WCs and
-- Soullesses
TRAIT_FEARLESS_MUSTHAVE =
    trait:
        id: "fearless"
        availability: "musthave"
        male_name: _ "fearless"
        female_name: _ "female^fearless"
        description: _ "Fights normally during unfavorable times of day/night"
        effect:
            apply_to: "fearless"

-- Units with trait Feral only receive 50% defense in villages regardless of
-- the base terrain the village is on.
TRAIT_FERAL_MUSTHAVE =
    trait:
        id: "feral"
        availability: "musthave"
        male_name: _ "feral"
        female_name: _ "female^feral"
        description: _ "Receives only 50% defense in land-based villages"
        effect:
            apply_to: "defense"
            replace: true
            defense:
                village: -50

-- Units with trait Weak get a -1 increment in hitpoints and melee damage.
TRAIT_WEAK =
    trait:
        id: "weak"
        male_name: _ "weak"
        female_name: _ "female^weak"
        effect:
            apply_to: "attack"
            range: "melee"
            increase_damage: -1
        effect:
            apply_to: "hitpoints"
            increase_total: -1

-- Units with trait Slow have -1 movement and 5% more hitpoints.
TRAIT_SLOW =
    trait:
        id: "slow"
        male_name: _ "slow"
        female_name: _ "female^slow"
        effect:
            apply_to: "movement"
            increase: -1
        effect:
            apply_to: "hitpoints"
            increase_total: "5%"

-- Units with trait Dim get a 20% increase in XP required to advance.
TRAIT_DIM =
    trait:
        id: "dim"
        male_name: _ "dim"
        female_name: _ "female^dim"
        effect:
            apply_to: "max_experience"
            increase: "20%"

-- Units with trait Aged get a 8 points HP decrease and have -1 movement and melee damage.
TRAIT_AGED =
    trait:
        id: "aged"
        male_name:  _ "aged"
        female_name:  _ "female^aged"
        effect:
            apply_to: "hitpoints"
            increase_total: -8
        effect:
            apply_to: "movement"
            increase: -1
        effect:
            apply_to: "attack"
            range: "melee"
            increase_damage: -1
