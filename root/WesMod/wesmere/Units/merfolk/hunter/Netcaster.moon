unit_type
    id:"Merman Netcaster"
    name: _ "Merman Netcaster"
    race:"merman"
    hitpoints:40
    movement_type:"swimmer"
    movement:7
    experience:80
    level:2
    alignment:"lawful"
    advances_to:"Merman Entangler"
    cost:27
    usage:"mixed fighter"
    description: _ "Fishing, as practiced by mermen, is largely a matter of chasing schools of fish into waiting nets, where oar-like clubs are used to dispatch the prey. The improvisation of using these against soldiers proved very effective; most land-native creatures are already quite awkward when waist-deep in water, and getting caught in a net can render them nearly helpless.

The effectiveness of this method led to the development of smaller, weighted nets, which could be cast through the air; these were useless for fishing, but were useful in both combat, and in hunting game that came too close to shore. Clubs were used in combat with little or no adaptation from fishing, since they were already quite deadly." .. SPECIAL_NOTES .. SPECIAL_NOTES_SLOW
    attack:
        name:"club"
        description:"_club"
        type:"impact"
        range:"melee"
        damage:6
        number:3
    attack:
        name:"net"
        description:"_net"
        type:"impact"
        range:"ranged"
        specials:
            WEAPON_SPECIAL_SLOW
        damage:9
        number:2
