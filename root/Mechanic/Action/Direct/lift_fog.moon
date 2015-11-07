-- [lift_fog]
-- Lifts the fog of war from parts of the map for a certain side (only relevant for sides that have fog=yes), allowing a player to witness what occurs there even if that player has no units within vision range.
-- [filter_side] with a StandardSideFilter indicating which sides should be affected.
-- StandardLocationFilter: the tiles from which fog should be lifted.
-- multiturn: yes/no, default:no. The default (not multiturn) causes fog to be removed in the same way that normal vision works; the cleared tiles will remain cleared until fog is recalculated (which normally happens when a side ends its turn). When multiturn is set to "yes", the cleared tiles remain clear until [reset_fog] cancels the clearing. This allows tiles to remain clear for multiple turns, or to be refogged before the end of the current turn (without also refogging all tiles). Multiturn lifted fog is not shared with allies (even when share_view=yes).
   
