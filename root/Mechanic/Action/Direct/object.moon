-- [object]
-- Gives some unit an object which modifies their stats in some way.
-- id: (Optional) when the object is picked up, a flag is set for id. The object cannot be picked up if a flag for id has been set. This means that any object with an id can only be used once, even if first_time_only=no is set for the event. This restriction is per level. In a campaign objects with the same id can be assigned once per level. For filtering objects, custom key can be used, such as item_id.
-- delayed_variable_substitution (boolean yes|no, default no): If set to "yes", the wml block contained in this [object] is not variable-substituted at execution time of the event where this [object] is within. You need this to work around a bug when adding ABILITY_TELEPORT via an [object] or when using [object][effect][filter]with a $this_unit (see http://gna.org/bugs/index.php?18893).
-- [effect]: one or more effect elements may be listed. See EffectWML for a description of [effect].
-- duration:
-- if 'scenario', effects only last until the end of the level (note : 'level' is the scenario, so this doesn't mean it last until the unit levels-up).
-- if 'forever' or not set, effects never wear off.
-- if 'turn', effects only last until the start of the unit's next turn (when the unit refreshes movement and attacks). (Like other start-of-turn behavior, objects with a duration of "turn" won't expire before turn 2.)
-- (Version 1.13.1 and later only) if 'turn end' or 'turn_end', effects only last until the end of the unit's next turn (exactly like the slowed status).
-- [filter] with a StandardUnitFilter as argument. The first unit found that matches the filter will be given the object. Only on-map units are considered. If no unit matches or no [filter] is supplied, it is tried to apply the object to the unit at the $x1,$y1 location of the event where this [object] is in. The case of no unit being at that spot is handled in the same way as no unit matching a given filter ([else] commands executed, cannot_use_message displayed)
-- [then]: a subtag that lets you execute actions if the filter conditions are met. The most common action that should be inside here is a [remove_item] tag, but you could probably put any tags that otherwise work in a [then] tag.
-- [else]: a subtag that lets you execute actions if the filter conditions are *not* met.
-- silent: whether or not messages should be suppressed. Default is "no". (Version 1.13.2 and later only) If no description is provided, this defaults to true, but can still be overridden.
-- image: the displayed image of the object.
-- name: (translatable) displayed as a caption of the image.
-- description: (translatable) displayed as a message of the image.
-- cannot_use_message: (translatable) displayed instead of description if no unit passes the filter test.
-- no_write: (Version 1.13.1 and later only) (bool, default false). If true, the contents of [effect] will be applied to the relevant unit, but the [object] tag will not be written to unit.modifications. This renders duration= irrelevant.
 