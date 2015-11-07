 
-- [modify_turns]
-- Modifies the turn limit in the middle of a scenario.
-- value: the new turn limit.
-- add: if used instead of value, specifies the number of turns to add to the current limit (can be negative).
-- current: changes the current turn number after applying turn limit modifications, if any. It is not possible to change the turn number to exceed the turn limit (1 <= current turns <= max turns).