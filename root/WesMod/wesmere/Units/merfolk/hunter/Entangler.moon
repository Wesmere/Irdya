unit_type
    id:"Merman Entangler"
    name: _ "Merman Entangler"
    race:"merman"
    hitpoints:55
    movement_type:"swimmer"
    movement:7
    experience:150
    level:3
    alignment:"lawful"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:46
    usage:"mixed fighter"
    description: _ "Merfolk tend to use a combination of both nets and clubs in fishing; nets to collect the fish, and clubs to finish the kill. Both of these tools have seen adaptation for warfare, and are valuable enough that auxilliaries who specialize in using them are deliberately brought to battle.

Mermen often find themselves in a standoff with land-based enemies; the merfolk are too strong in the water, and are too weak to make any offense on land. Nets are a key bit of leverage; without nets, mermen can’t give any effective chase over land, and are at a great disadvantage in hand-to-hand combat." .. SPECIAL_NOTES .. SPECIAL_NOTES_SLOW
    attack:
        name:"club"
        description:"_club"
        type:"impact"
        range:"melee"
        damage:8
        number:3
    attack:
        name:"net"
        description:"_net"
        type:"impact"
        range:"ranged"
        specials:
            WEAPON_SPECIAL_SLOW
        damage:8
        number:3
