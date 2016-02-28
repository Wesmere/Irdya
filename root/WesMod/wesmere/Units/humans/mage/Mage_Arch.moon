unit_type
    id:"Arch Mage"
    name: _ "Arch Mage"
    race:"human"
    gender:{"male","female"}
    hitpoints:54
    movement_type:"smallfoot"
    movement:5
    experience:220
    level:3
    alignment:"neutral"
    advances_to:"Great Mage"
    cost:59
    usage:"mixed fighter"
    description: _ "The title of Arch Mage is traditionally conferred only after a lifetime of study and achievement to match. Arch Magi are often employed in positions of education, or as advisors to those sensible enough to seek the fruits of their wisdom. Many tend to wealthy patrons, a profitable enterprise for both as, outside of the occasional thaumaturgy or word of advice, it gives the mage leave to pursue their research undisturbed. From this flows the greater body of human knowledge; the sciences, the philosophies, and the arts which give beauty to the world at large.

Though not trained for any sort of combat, if need arises an Arch Mage can unleash the full power of their art, something which is not to be taken lightly." .. SPECIAL_NOTES .. SPECIAL_NOTES_MAGICAL
    resistance:
        fire:80
    attack:
        name:"staff"
        description: _ "staff"
        type:"impact"
        range:"melee"
        damage:7
        number:2
    attack:
        name:"fireball"
        description: _ "fireball"
        type:"fire"
        range:"ranged"
        specials:WEAPON_SPECIAL_MAGICAL
        damage:12
        number:4
    female:
        name: _ "female^Arch Mage"
        gender:"female"
        --
        -- HACK:" replace the default "(male) idle animation with a fake
        -- still one so that it doesn't look awkward until we have proper
        -- graphics for it.
        --
