 
-- [modify_ai]
-- Changes AI objects (aspects, goals, candidate actions or stages) for a specified side. See AiWML for full description.
-- action (string): Takes values 'add', 'change', 'delete' or 'try_delete' to do just that for the AI object.
-- path (string): Describes which AI object is to be modified.
-- [facet], [goal], [candidate_action] or [stage]: Details about the AI object to be modified.
-- StandardSideFilter tags and keys; default for empty side= is all sides, as usual in a SSF.