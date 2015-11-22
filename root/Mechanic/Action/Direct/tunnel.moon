 
-- [tunnel]
-- Create a tunnel between some locations, later usable by units to move from source hex to target hex (using the movement cost of unit on the target terrain). (source)
-- id identifier for the tunnel, to allow removing (optional).
-- remove: (boolean) yes/no value. If yes, removes all defined tunnels with the same ID (then only id= is necessary). (default: no)
-- bidirectional: (boolean) if yes, creates also a tunnel in the other direction. (default: yes)
-- always_visible: (boolean) if yes, the possible movement of enemies under fog can be seen. (default: no)
-- [source]: StandardLocationFilter the source hex(es) (required).
-- [target]: StandardLocationFilter the target hex(es) (required).
-- [filter]: StandardUnitFilter the units which can use the tunnel (required). Leave empty for "all units".
-- (Note: The tunnel tag can also be used inside the [teleport] ability, without remove= and id=).