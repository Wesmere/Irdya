unit_type
    id:"Skeletal Dragon"
    name: _ "Skeletal Dragon"
    --not 'race:"monster"', because we need the not_living attribute
    race:"undead"
    hitpoints:86
    movement_type:"undeadfly"
    movement:5
    experience:200
    level:4
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:100
    usage:"fighter"
    resistance:
        blade:60
        pierce:40
        impact:120
        fire:100
        --you have many arcane units by now, probably, and he shouldn't die all that easily.
        arcane:100
    description: _ "Long ago one of the mightiest living creatures, the feared Dragon has become only bones and dark sinew. Long after its death, it was raised through the dark powers of necromancy, which it now serves. The Skeletal Dragon may look like nothing more than a pile of bones, but few people who thought that way lived long enough to change their minds." .. SPECIAL_NOTES .. SPECIAL_NOTES_DRAIN
    attack:
        name:"jaw"
        description:"_jaw"
        type:"blade"
        range:"melee"
        specials:
            WEAPON_SPECIAL_DRAIN
        damage:10
        number:4
    attack:
        name:"claws"
        description:" _claws"
        type:"blade"
        range:"melee"
        damage:25
        number:2
