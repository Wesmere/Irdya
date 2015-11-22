[[
Campaign credits

The campaign's name automatically is inserted at the top of the rolling credits followed by title/text key pairs. There can be any number of [about] tags inside a [campaign] tag, but none of them will display credits if there is no "id" key present inside [campaign] (see above). The [about] tag has the following keys:
title: (translatable) large text used to start a new subsection (writers, artists, units, balancing) in the rolling credits
text: (translatable, but you probably won't want to make it such) smaller text which is displayed before the contributor names
[entry]: Contains information about a single contributor. Only the name key will be used in-game, the other three keys are for display on the Credits page (note: the values of these keys will only display on the Credits page for mainline campaigns; they will not display for UMC campaigns)
name: The name of the contributor
comment: Optional short note about what that person did
email: Optional email address
wikiuser: Optional, the user name on the wiki
]]