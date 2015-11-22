-- [endlevel]
-- Ends the scenario.
-- result: before the scenario is over, all events with name=result are triggered. If result=victory, the player progresses to the next level (i.e., the next scenario in single player); if result=defeat, the game returns to the main menu.
-- When the result is "victory" the following keys can be used:
-- bonus: whether the player should get bonus gold (maximum possible gold that could have been earned by waiting the level out). The default is bonus=yes.
-- carryover_report: whether the player should receive a summary of the scenario outcome, the default is carryover_report=yes.
-- save: whether a start-of-scenario save should be created for the next scenario, the default is save=yes. Do not confuse this with saving of replays for the current scenario.
-- replay_save: whether a replay save for the current scenario is allowed, the default is replay_save=yes. If yes, the player's settings in preferences will be used to determine if a replay is saved. If no, will override and not save a replay.
-- linger_mode: If ...=yes, the screen is greyed out and there's the possibility to save before advancing to the next scenario, the default is linger_mode=yes.
-- reveal_map: (Multiplayer only) (Default is 'yes') If 'no', shroud doesn't disappear when game ended.
-- next_scenario: (default specified in [scenario] tag) the ID of the next scenario that should be played. All units that side 1 controls at this point become available for recall in next_scenario.
-- carryover_percentage: by default 80% of the gold is carried over to the next scenario, with this key the amount can be changed.
-- carryover_add: if true the gold will be added to the starting gold the next scenario, if false the next scenario will start with the amount of the current scenario (after taxes) or the minimum in the next scenario. Default is false.
-- music: (default specified in [scenario] or [game_config] tags) a comma-separated list of music tracks from which one will be chosen and played once after any events related to the end of level result are executed; by default, victory_music is used on victory, and defeat_music on defeat.
-- end_credits: Whether to display the credits screen at the end of a single-player campaign. Defaults to yes. Note that this has cumulative effects over the campaign - it persists even if the endlevel does not trigger the end of the campaign. See also CampaignWML.
-- end_text: (translatable) Text that is shown centered in a black screen at the end of a campaign. Defaults to "The End". Note that this has cumulative effects over the campaign - it persists even if the endlevel does not trigger the end of the campaign. See also CampaignWML.
-- end_text_duration: Delay, in milliseconds, before displaying the game credits at the end of a campaign. In other words, for how much time end_text is displayed on screen. Defaults to 3500. Note that this has cumulative effects over the campaign - it persists even if the endlevel does not trigger the end of the campaign. See also CampaignWML.
-- [next_scenario_settings]: Any tags or attribute children of this optional argument to [endlevel] are merged into the scenario/multiplayer tag of the *next* scenario. This allows you to e.g. reconfigure the [side] tags or settings, just before load. This feature was removed in 1.11.17, it might be redesigned and reintroduced.
-- [next_scenario_append]: Any tags of this optional argument are appended at high level to the next scenario. This is most appropriate for [event] tags, although you may find other uses. Example test scenario for these features: https://gna.org/support/download.php?file_id=20119 This feature was removed in 1.11.17, it might be redesigned and reintroduced.
-- [result] (Version 1.13.0 and later only) Allows specification of a side specific result, this is for competitive multiplayer scenarios/campaigns where it might happen that one player wins but another player loses. The following attributes are accepted and have the same effect as in [endlevel]:
-- result
-- bonus
-- carryover_percentage
-- carryover_add
-- And there is also
-- side The number of the side for which these results should apply. 