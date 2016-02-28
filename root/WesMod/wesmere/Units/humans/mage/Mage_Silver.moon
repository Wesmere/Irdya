unit_type
    id:"Silver Mage"
    name: _ "Silver Mage"
    race:"human"
    gender:{"male","female"}
    hitpoints:48
    movement_type:"smallfoot"
    movement:6
    experience:150
    level:3
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:59
    usage:"mixed fighter"
    description: _ [[The many paths that a mage can take in study lead to strikingly different ends. Often viewed as sages, or wandering mystics, silver magi act under an agenda which is obscure even to their own colleagues. Though helpful to the magisteriums which often employ them in the field, they remain somewhat aloof.

They have, in fact, their own order amongst the ranks of magi, an order which withholds certain secrets from their peers. One of these is an apparent ability to cross great distances, faster than one could possibly travel on foot. Members of the silver order ardently refuse to discuss the workings of this with any of their fellow magi, and on those rare occasions when others have pried into their work, they have abandoned the endeavor, never to speak of it again.

Silver magi are often more physically adept than other magi, and their skills are of undeniable use on the battlefield, if one can manage to induce the mage to apply them.]] .. SPECIAL_NOTES .. _ "SPECIAL_NOTE^ Silver Magi are well-attuned to their magical natures and are highly resistant to non-physical damage." ..SPECIAL_NOTES_MAGICAL .. SPECIAL_NOTES_TELEPORT
    resistance:
        fire:50
        cold:50
    abilities:
        ABILITY_TELEPORT
    attack:
        name:"staff"
        description: _ "staff"
        type:"impact"
        range:"melee"
        damage:7
        number:2
    attack:
        name:"missile"
        description: _ "missile"
        type:"fire"
        range:"ranged"
        specials:
            WEAPON_SPECIAL_MAGICAL
        damage:9
        number:4
    female:
        name: _ "female^Silver Mage"
        gender:"female"
