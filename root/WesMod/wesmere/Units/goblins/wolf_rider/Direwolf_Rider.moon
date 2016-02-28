unit_type
    id:"Direwolf Rider"
    name: _ "Direwolf Rider"
    race:"wolf"
    hitpoints:61
    movement_type:"orcishfoot"
    movement:10
    experience:150
    level:3
    alignment:"chaotic"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:41
    usage:"scout"
    description: _ "‘Dire wolves’ differ from the common variety only in size and color. They typically stand taller than a horse at the shoulder, and have an appetite to match. Only a madman would willingly encounter them; but goblins, at great cost to themselves, have managed to tame and ride them.

The claws of a wolf are not generally regarded as being the more dangerous parts, but on a beast this large, they are thicker and longer than iron nails. Their riders smear a poison on the front set, not unlike that used by the orcish assassins, making a swipe from these beasts’ paws into a most deadly stroke." .. SPECIAL_NOTES .. SPECIAL_NOTES_POISON
    attack:
        name:"fangs"
        description: _ "fangs"
        type:"blade"
        range:"melee"
        damage:9
        number:4
    attack:
        name:"claws"
        description: _ "claws"
        type:"blade"
        range:"melee"
        damage:4
        number:4
        specials:
            WEAPON_SPECIAL_POISON
