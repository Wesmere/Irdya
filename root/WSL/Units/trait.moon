
Trait =
    id:
        description: [[unique identifier]]
    availability:
        description: [[describes whether a trait is "musthave" for a race or is available to "any" unit in a race, including leaders, or "none" if it is not normally available, but should be kept when advancing to this unit type. (Traits not available to the advanced unit type at all, are permanently lost upon advancement.) The default is for a trait to only be available to nonleaders. Currently "any" should not be used for traits available in multiplayer. It can be used for campaign specific traits. (Note that currently "musthave" is somewhat misused to have what are really abilities (undead and mechanical) default from a unit type's race. Ideally someone will eventually extend race to allow for default abilities. It might also be possible to unify traits and abilities with keys to indicate how you get them and what happens to them when you advance, while allowing them to come from race, unit type and unit definitions. There are also display issues related to doing this.)]]
    male_name:
        description: [[text displayed in the status of unit with the trait if the unit is male.]]
    female_name:
        description: [[text displayed in the status of unit with the trait if the unit is female.]]
    name:
        description: [[text displayed in the status of unit with the trait if none of the two above is used.]]
    description:
        description: [[text displayed for the description of the trait.]]
    effect:
        description: [[described in EffectWSL. More than one of these can be used.]]
        type: "table"
        is_list: true
        scheme: EffectWSL

wsl_handler
    id: "trait"
    scope: "Units"
    description: [[The "trait" table describes a trait. When it appears in the [units] toplevel, it describes a global trait, and all races with the attribute ignore_global_traits=no will have this trait.; it may also appear in other places.]]
    scheme: Trait
