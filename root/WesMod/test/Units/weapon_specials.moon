
-- weapons specials

-- WEAPON_SPECIAL_BERSERK =
--     -- Canned definition of the Berserk ability to be included in a
--     -- specials clause.
--     berserk
--         id: "berserk"
--         name:  _ "berserk"
--         description:  _ "Whether used offensively or defensively, this attack presses the engagement until one of the combatants is slain, or 30 rounds of attacks have occurred."
--         value: 30



-- WEAPON_SPECIAL_BACKSTAB =
--     -- Canned definition of the Backstab ability to be included in a
--     -- specials clause.
--     damage
--         id: "backstab"
--         name:  _ "backstab"
--         description:  _ "When used offensively, this attack deals double damage if there is an enemy of the target on the opposite side of the target, and that unit is not incapacitated (turned to stone or otherwise paralyzed)."
--         multiply: 2
--         backstab: true
--         active_on: "offense"



-- WEAPON_SPECIAL_PLAGUE_TYPE = (TYPE) ->
--     -- Canned definition of the Plague ability to be included in a
--     -- specials clause (with type specifier).
--     plague
--         id: plague({TYPE})
--         name:  _ "plague"
--         description:  _ "When a unit is killed by a Plague attack, that unit is replaced with a unit identical to and on the same side as the unit with the Plague attack. This doesn’t work on Undead or units in villages."
--         type: TYPE



-- WEAPON_SPECIAL_PLAGUE =
--     -- Canned definition of the Plague ability to be included in a
--     -- specials clause.
--     plague
--         id: "plague"
--         name:  _ "plague"
--         description:  _ "When a unit is killed by a Plague attack, that unit is replaced with a Walking Corpse on the same side as the unit with the Plague attack. This doesn’t work on Undead or units in villages."
--         type: Walking Corpse



-- WEAPON_SPECIAL_SLOW =
--     -- Canned definition of the Slow ability to be included in a
--     -- specials clause.
--     slow
--         id: "slow"
--         name:  _ "slows"
--         description:  _ "This attack slows the target until it ends a turn. Slow halves the damage caused by attacks and the movement cost for a slowed unit is doubled. A unit that is slowed will feature a snail icon in its sidebar information when it is selected."



-- WEAPON_SPECIAL_PETRIFY =
--     -- Canned definition of the Petrify ability to be included in a
--     -- specials clause.
--     petrifies
--         id: "petrifies"
--         name:  _ "petrifies"
--         description:  _ "This attack petrifies the target, turning it to stone. Units that have been petrified may not move or attack."



-- WEAPON_SPECIAL_MARKSMAN =
--     -- Canned definition of the Marksman ability to be included in a
--     -- specials clause.
--     chance_to_hit
--         id: "marksman"
--         name:  _ "marksman"
--         description:  _ "When used offensively, this attack always has at least a 60% chance to hit."
--         value: 60
--         cumulative: true
--         active_on: offense



-- WEAPON_SPECIAL_MAGICAL =
--     -- Canned definition of the Magical (targeting) ability to be included in a
--     -- specials clause.
--     chance_to_hit
--         id: "magical"
--         name:  _ "magical"
--         description:  _ "This attack always has a 70% chance to hit regardless of the defensive ability of the unit being attacked."
--         value: 70
--         cumulative: false



-- WEAPON_SPECIAL_SWARM =
--     -- Canned definition of the Swarm ability to be included in a
--     -- specials clause.
--     swarm
--         id: "swarm"
--         name:  _ "swarm"
--         description:  _ "The number of strikes of this attack decreases when the unit is wounded. The number of strikes is proportional to the percentage of its of maximum HP the unit has. For example a unit with 3/4 of its maximum HP will get 3/4 of the number of strikes."



-- WEAPON_SPECIAL_CHARGE =
--     -- Canned definition of the Charge ability to be included in a
--     -- specials clause.
--     damage
--         id: "charge"
--         name:  _ "charge"
--         description:  _ "When used offensively, this attack deals double damage to the target. It also causes this unit to take double damage from the target’s counterattack."
--         multiply: 2
--         apply_to: "both"
--         active_on: "offense"



-- WEAPON_SPECIAL_DRAIN =
--     -- Canned definition of the Drain ability to be included in a
--     -- specials clause.
--     drains
--         id: "drains"
--         name:  _ "drains"
--         description:  _ "This unit drains health from living units, healing itself for half the amount of damage it deals (rounded down)."



-- WEAPON_SPECIAL_FIRSTSTRIKE =
--     -- Canned definition of the First-strike ability to be included in a
--     -- specials clause.
--     firststrike
--         id: "firststrike"
--         name:  _ "first strike"
--         description:  _ "This unit always strikes first with this attack, even if they are defending."



-- WEAPON_SPECIAL_POISON =
--     -- Canned definition of the Poison ability to be included in a
--     -- specials clause.
--     poison
--         id: "poison"
--         name:  _ "poison"
--         description:  _ "This attack poisons living targets. Poisoned units lose 8 HP every turn until they are cured or are reduced to 1 HP. Poison can not, of itself, kill a unit."


