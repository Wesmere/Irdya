unit_type
    id:"Great Mage"
    name: _ "Great Mage"
    race:"human"
    gender:{"male","female"}
    hitpoints:65
    movement_type:"smallfoot"
    movement:5
    experience:200
    level:4
    alignment:"neutral"
    advances_to:nil
    -- AMLA_DEFAULT
    cost:72
    usage:"mixed fighter"
    description: _ "Any person who is even considered for the title of Great Mage is quite nearly a legend in their own time, and town criers have forcibly learnt discretion in applying the title. Merit for the title is carefully considered by a council of the leading magi of the age, and the conferment of the title is given only by a majority vote. Regardless, anyone who is seriously nominated for the honor of being called a Great Mage is, without question, a master of their art, and has surpassed almost any of their peers in skill.

Though they are not warriors, by any means, the application of their art to combat is something that often causes other soldiers to stand aside in awe." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL
    resistance:
        fire:70
    attack:
        name:"staff"
        description:"_staff"
        type:"impact"
        range:"melee"
        damage:9
        number:2
    attack:
        name:"fireball"
        description:"_fireball"
        type:"fire"
        range:"ranged"
        specials:WEAPON_SPECIAL_MAGICAL
        damage:16
        number:4
    female:
        name: _ "female^Great Mage"
        gender:"female"
