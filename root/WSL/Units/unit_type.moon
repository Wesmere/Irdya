wsl_handler
    id: "unit_type"
    scope: "Units"
    on_scan: (cfg) ->
        --state.Registry.unit_type[cfg.id] = false
    on_load: (cfg) ->
        state.Units.unit_type[cfg.id] = cfg

    description: "Each unit_type() function call defines one unit type. (for the use of unit() to create a unit, see SingleUnitWML)"

    scheme:
        advance_from:
            description: "Defines the previous unit type on the advancement tree. Allows a campaign-specific unit to be spliced into an already existing advancement tree. It should generally be used only inside a campaign ifdef, to prevent changes to other campaigns. This tag makes changes to the advances_to and experience keys of a base unit to make it advance into this unit."

            scheme:
                unit:
                    description: "the id of the base unit from which this unit advances. This adds the unit into the list of units which unit can advance into."
                experience:
                    description: "(optional) If present the experience needed to advance is set to this value. If there are more than one [advancefrom] tags referencing the same base unit within the same preprocessor scope (e.g. a campaign #ifdef) with experience= keys, the lowest value of these is chosen. Note: this will also lower the experience required to advance to other units which the base unit can advance into.
If the previous unit type makes use of [male] and/or [female] tags, then the current (new) unit type is expected to also. That is, the subtypes defined by those tags will only receive this advancement if the new type has a corresponding tag."

        advances_to:
            description: "When this unit has experience greater than or equal to experience, it is replaced by a unit of the type that the value of advances_to refers to. All modifications that have been done to the unit are applied to the unit it is replaced by. The special value 'null' says that the unit does not advance but gets an AMLA instead. Can be a comma-separated list of units that can be chosen from upon advancing."

        alignment:
            description: "one of lawful/neutral/chaotic/liminal (See TimeWML). Default is "neutral"."
            default: "neutral"
        attacks:
            description: "the number of times that this unit can attack each turn."
            type: "number"
        cost:
            description: "when a player recruits a unit of this type, the player loses cost gold. If this would cause gold to drop below 0, the unit cannot be recruited."
            type: "number"
        recall_cost:
            description: "(Version 1.13.0 and later only) the default recall cost of units of this type, overriding the recall cost set in scenario [side] tags or the global [game_config] value. Individual units may override this value in [unit]. A value of -1 is equivalent to not specifying this attribute."
            type: "number"
        description:
            description: "(translatable) the text displayed in the unit descriptor box for this unit. Default 'No description available...'."
            type: "tString"
        do_not_list:
            description: "Not used by the game, but by tools for browsing and listing the unit tree. If this is 'true', the unit will be ignored by these tools."
            type: "boolean"
            default: false
        ellipse:
            description: "the ellipse image to display under the unit, which is normally team-colored. Default is "misc/ellipse"; "-nozoc" and "-leader" are automatically appended for units without zone of control and with canrecruit=yes respectively. The IS_HERO/MAKE_HERO/UNMAKE_HERO macros change the ellipse to/back from "misc/ellipse-hero". Finally, setting this to "none" will cause the unit to not have any ellipses displayed under it regardless of the user's preferences."
        experience:
            description: "When this unit has experience greater than or equal to experience, it is replaced by a unit with 0 experience of the type that the value of advances_to refers to. All modifications that have been done to the unit are applied to the unit it is replaced by."
            type: "number"
        flag_rgb:
            description: "usually set by MAGENTA_IS_THE_TEAM_COLOR; specifies the colours in the base flag to use for team-colouring the unit, expressed as a colour name (such as magenta) or a comma-separated list of RGB values (in hex format)."
            default: "magenta"
            type: "string"
        gender:
            description: "has a value of either male or female, and determines which of the keys male_names and female_names should be read. When a unit of this type is recruited, it will be randomly assigned a name by the random name generator, which will use these names as a base."
            enum: {"male", "female"}
            type: "enum"
        hide_help:
            description: "determines if the unit type will appear in the in-game help. Possible values true and false, defaults to false."
            default: false
            type: "boolean"
        hitpoints:
            description: "the maximum HP that the unit has, and the HP it has when it is created."
            type: "number"
        id:
            description: "the value of the type key for units of this type. This is required and must be unique among all [unit_type] tags. An id should consist only of alphanumerics and spaces (or underscores). type keys are found in SingleUnitWML and FilterWML. For example, id=Drake Flare
        WARNING : characters "$", "&", "*", "-", "(" and ")" are illegal for use in the unit type id and must be avoided because they might lead to corrupted saved games"
            type: "string"
            mandatory: true
        ignore_race_traits:
            description: "Determines whether racial traits (see UnitsWML) are applied."
            type: "boolean"
            default: false
        image:
            description: "sets the base image of the unit, which is used on the map."
        image_icon:
            description: "sets the image used to represent the unit in areas such as the attack dialog and the unit image box in the sidebar. ~CROP function can be useful here. You can see Loyalists Paladin as an example."
        level:
            description: "the amount of upkeep the unit costs. After this unit fights, its opponent gains level experience. See also kill_experience (GameConfigWML), and leadership (AbilitiesWML)."
            type: "number"
            default: 1
        movement:
            description: "the number of move points that this unit receives each turn."
            type: "number"
        movement_type:
            description: "See movetype. Note that the tags [movement_costs], [vision_costs], [defense], and [resistance] can be used to modify this movetype."
            type: "string"
        name:
            description: "(translatable) displayed in the Status Table for units of this type."
            type: "tString"
        num_traits:
            description: "the number of traits that units of this type should receive when they are recruited, overriding the value set in the race table."
            type: "number"
        profile:
            description: "the portrait image to use for this unit type. You can also set a portrait for an individual unit instead of the whole unit type (see SingleUnitWML). The engine first looks for the image in the transparent subdirectory and if found that image is used. If not found it will use the image as-is. Depending on the size the engine will or will not scale the image, the cutoff currently is at 300x300. For images which should only be shown on the right side in the dialog append ~RIGHT() to the image."
        small_profile:
            description: [[the image to use when a smaller portrait is needed than the one used for messages (e.g., in the help system). When this attribute is missing, the value of the profile attribute is used instead. When present, the heuristic for finding a transparent portrait is disabled for the profile attribute, so the correct profile should be set too. Note that image modifiers are allowed; they might be useful for cropping and rescaling a portrait:
        small_profile="portraits/elves/transparent/marksman+female.png~CROP(0,20,380,380)~SCALE(205,205)"
        profile="portraits/elves/transparent/marksman+female.png"]]
        race:
            description: "See [race]. Also used in standard unit filter (see FilterWML). Mainline Wesnoth features following values: bats, drake, dwarf, elf, falcon, goblin, gryphon, human, khalifate, lizard, mechanical, merman, monster, naga, ogre, orc, troll, undead, wolf, wose. They are defined in /data/core/units.cfg."
            type: "string"
        undead_variation:
            description: "When a unit of this type is killed by a weapon with the plague special, this variation is applied to the new plague unit that is created, whatever its type. For example, if the plague special creates Walking Corpses and undead_variation is set to "troll", you'll get a troll Walking Corpse. Defaults to the undead_variation set in this unit type's race."
        usage:
            description: "the way that the AI should recruit this unit, as determined by the scenario designer. (See recruitment_pattern, AiWML). The following are conventions on usage:
        ** scout: Fast, mobile unit meant for exploration and village grabbing.
        ** fighter: Melee fighter, melee attack substantially more powerful than ranged.
        ** archer: Ranged fighter, ranged attack substantially more powerful than melee.
        ** mixed fighter: Melee and ranged fighter, melee and ranged attacks roughly equal.
        ** healer: Specialty 'heals' or 'cures'.
        Note that this field primarily affects recruitment. It also has a small effect on unit movement (the AI tries to keep scouts away from enemies, to some extent). It does not affect the AI's behavior in combat; that is always computed from attack power and hitpoints. Non-standard usages may be used as well."
        vision:
            description: "the number of vision points to calculate the unit's sight range. Defaults to movement if not present."
            type: "number"
        zoc:
            description: [[if 'true' the unit will have a zone of control regardless of level. If present but set to anything other than "yes," the unit will have no zone of control. If the tag is omitted, zone of control is dictated by unit level (level 0 = no zoc, level 1+ = has zoc).]]
            type: "boolean"
        die_sound:
            description: "sets the sound, which is used when the unit dies."
        healed_sound:
            description: "sets the sound used when the unit is healed in any way (default: heal.wav)."

        -- After max level advancement (AMLA)

        advancement:
            description: "describes what happens to a unit when it reaches the XP required for advancement. It is considered as an advancement in the same way as advancement described by advances_to; however, if the player chooses this advancement, the unit will have one or more effects applied to it instead of advancing.
        id: unique identifier for this advancement; Required if there are multiple advancement options, or if strict_amla=no."
            scheme:
                always_display:
                    description: "if set to 'true' displays the AMLA option even if it is the only available one."
                description:
                    description: "a description (see DescriptionWSL) displayed as the option for this advancement if there is another advancement option that the player must choose from; otherwise, the advancement is chosen automatically and this key is irrelevant."
                image:
                    description: "an image to display next to the description in the advancement menu."
                max_times:
                    description: [[default 1. The maximum times the unit can be awarded this advancement. Pass -1 for "unlimited".]]
                    type: "number"
                    default: 1
                strict_amla:
                    description: "Disable the AMLA if the unit can advance to another unit."
                    type: "boolean"
                    default: false
                require_amla:
                    description: "An optional list of AMLA id keys that act as prerequisites for this advancement to become available. Order is not important, and an AMLA id can be repeated any number of times to indicate that another advancement must be chosen several times before this advancement option will become available.
                example: require_amla=tough,tough,incr_damage assumes there exist other [advancement] options called id=tough and id=incr_damage. Once tough is chosen twice and incr_damage is chosen once, then the current [advancement] will become available.
                require_amla=tough,incr_damage,tough is an equivalent way of expressing this."
                exclude_amla:
                    description: "(Version 1.13.2 and later only) An optional list of AMLA id keys that represent AMLAs that are mutually exclusive to this one. Order is not important, and an AMLA id can be repeated. If the unit already has any of the AMLAs that appear once in this list, then this AMLA will not be made available. If an AMLA id appears multiple times in the list, then this AMLA will be made available only if the other AMLA has been chosen less than the number of times it appears in the list. Of course, for this to really make two AMLAs mutually exclusive, you need to add exclude_amla to both AMLA defintions."
                effect:
                    description: "A modification applied to the unit whenever this advancement is chosen. See EffectWSL"

        -- Attacks

        attack:
            description: "one of the unit's attacks."

            scheme:
                description:
                    description: "a translatable text for name of the attack, to be displayed to the user."
                id:
                    description: "todo"
                name:
                    description: "the name of the attack. Used as a default description, if description is not present, and to determine the default icon, if icon is not present (if name:x then icon:attacks/x.png is assumed unless present). Non-translatable. Used for the has_weapon key and animation filters; see StandardUnitFilter and AnimationWML"
                type:
                    description: "the damage type of the attack. Used in determining resistance to this attack (see [resistance])."
                specials:
                    description: "contains the specials of the attack. See AbilitiesWML."
                icon:
                    description: "the image to use as an icon for the attack in the attack choice menu, as a path relative to the images directory."
                range:
                    description: "the range of the attack. Used to determine the enemy's retaliation, which will be of the same type. Also displayed on the status table in parentheses; 'melee'(default) displays "melee", while 'ranged' displays "ranged". Range can be anything. Standard values are now "melee" and "ranged". From now on, short and long will be treated as totally different ranges. You can create any number of ranges now (with any name), and units can only retaliate against attacks for which they have a corresponding attack of the same range. This value is translatable."
                damage:
                    description: "the damage of this attack"
                number:
                    description: "the number of strikes per attack this weapon has"
                accuracy:
                    description: "a number added to the chance to hit whenever using this weapon offensively; negative values work too"
                parry:
                    description: "a number deducted from the enemy chance to hit whenever using this weapon offensively; negative values work too"
                movement_used:
                    description: "determines how many movement points using this attack expends. By default all movement is used up, set this to 0 to make attacking with this attack expend no movement."
                attack_weight:
                    description: "helps the AI to choose which attack to use when attacking; highly weighted attacks are more likely to be used. Setting it to 0 disables the attack on attack"
                defense_weight:
                    default: "1.0"
                    description: "used to determine which attack is used for retaliation. This affects gameplay, as the player is not allowed to determine his unit's retaliation weapon. Setting it to 0 disable the attacks on defense
                For the weight settings, the engine usually chooses the attack with the best average total damages * weight (default weight = 1.0)."

        -- Other tags

        base_unit:
            description: "Contains one attribute, id, which must be the ID of a unit type. If specified, the UnitTypeWML for that unit is copied into this one. Attributes in this unit overwrite the copy. Tags modify the corresponding tag of the original, so for example the first [attack] tag in the derived unit would modify the first attack of the base unit rather than defining a new attack."
            scheme:
                id:
                    description: "TODO"

        portrait:
            description: "Describes a unit portrait for dialogue. However, generally you should use the profile key instead; [portrait] is mostly for internal use."
            scheme:
                size:
                    description: "The size of the portrait, in pixels."
                side:
                    description: "One of left or right."
                mirror:
                    description: "Whether to flip the image horizontally."
                image:
                    description: "The image path."

        abilities:
            description: "Defines the abilities of a unit. See AbilitiesWML"

        event:
            description: "Any [event] written inside the [unit_type] tag will get included into any scenario where a unit of this type appears in. Note that such events get included when a unit of this type first appears in the scenario, not automatically when the scenario begins (meaning that name=prestart events, for example, would usually never trigger). See EventWML and WML_Abilities"

        variation:
            description: "Defines a variation of a unit. Variations are invoked with an [effect] tag or the variation= attribute in SingleUnitWML. They are currently used for graphical variations (giving character sprites new weapons) but theoretically you could do anything with it."
            scheme:
                variation_id:
                    description: "The id of this variation. Defaults to variation_name."
                variation_name:
                    description: "Translatable. The name of the variation."
                inherit:
                    description: "if yes, inherits all the properties of the base unit, which are then overwritten by the keys and tags of this variation. Defaults to no.
                The id key is always inherited, regardless of the value of inherit.
                All keys and tags of [unit_type], except [advancefrom], [base_unit], [female], [male], and [variation]."
                male: {}
                female:
                    description: "These can specify a variation based on gender for a unit. If these are provided, they will automatically apply based upon the gender of a unit."
                    scheme:
                        inherit:
                            description: "if yes, inherits all the properties of the base unit. Defaults to yes.
        The id key is always inherited, regardless of the value of inherit.
        All [unit_type] tags and keys, excluding [advancefrom], [base_unit], [female], and [male].
        "
