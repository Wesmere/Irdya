unit_type
    id:"Paladin"
    name: _ "Paladin"
    race:"human"
    hitpoints:65
    movement_type:"mounted"
    movement:8
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    undead_variation:"mounted"
    cost:58
    usage:"fighter"
    description: _ "Knights of the highest virtue, Paladins have sworn their strength not to king and crown, but to ideals themselves; of chivalry, and the stewardship of everything that is good. They may serve in the armies of the world, but their first loyalties often lie with groups of their own making; secret, monastic orders that cross political and cultural boundaries. Rulers are sometimes wary of them, for the paladins’ loyalty is only as strong as the liege’s apparent virtue. This has led the more darkly ambitious to either attempt to defame and disperse these groups, or more rarely, to conjure elaborate deceptions to keep these otherwise staunchly loyal troops in service.

Full paladins are generally not quite as fearsome as the ‘Grand Knights’ that champion most armies, but they are first-class fighters nonetheless. Additionally, their wisdom and piety grants these warrior monks certain curious abilities; a paladin is very powerful in fighting magical or unnatural things, and most have some skill at medicine and healing." .. SPECIAL_NOTES .. SPECIAL_NOTES_CHARGE .. SPECIAL_NOTES_ARCANE .. SPECIAL_NOTES_HEALS .. SPECIAL_NOTES_DEFENSE_CAP
    resistance:
        arcane:40
    abilities:
        ABILITY_HEALS
    attack:
        name:"sword"
        description: _ "sword"
        type:"arcane"
        range:"melee"
        damage:8
        number:5
    attack:
        name:"lance"
        description: _ "lance"
        type:"pierce"
        specials:
            WEAPON_SPECIAL_CHARGE
        range:"melee"
        damage:15
        number:2
