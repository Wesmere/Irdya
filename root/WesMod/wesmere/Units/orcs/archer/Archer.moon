unit_type
    id=Orcish Archer
    name= _ "Orcish Archer"
    race=orc
    image="units/orcs/archer.png"
    profile="portraits/orcs/transparent/archer.png"
    {MAGENTA_IS_THE_TEAM_COLOR}
    hitpoints=32
    movement_type=orcishfoot
    movement=5
    experience=30
    level=1
    alignment=chaotic
    advances_to=Orcish Crossbowman
    cost=14
    usage=archer
    description= _ "Amongst orcs, bows are often regarded as a cowardly weapon; but even orcs, especially youths and those of slight build, are pragmatic enough to use them in spite of this. Orcish archers are seldom well equipped, and have no semblance of training. Even as poorly handled as they are, their weapons can still be quite deadly, and the wielders thereof rarely march alone."
    die_sound={SOUND_LIST:ORC_SMALL_DIE}
    {DEFENSE_ANIM_RANGE "units/orcs/archer-defend-2.png" "units/orcs/archer-defend-1.png" {SOUND_LIST:ORC_SMALL_HIT} melee}
    {DEFENSE_ANIM_RANGE "units/orcs/archer-bow-defend.png" "units/orcs/archer-bow.png" {SOUND_LIST:ORC_SMALL_HIT} ranged}

    attack:
        name=dagger
        description=_"dagger"
        icon=attacks/dagger-orcish.png
        type=blade
        range=melee
        damage=3
        number=2

    attack:
        name=bow
        description=_"bow"
        icon=attacks/bow-orcish.png
        type=pierce
        range=ranged
        damage=6
        number=3

    attack:
        name=bow
        description=_"bow"
        icon=attacks/bow-orcish.png
        type=fire
        range=ranged
        damage=7
        number=2
