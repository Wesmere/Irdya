unit_type
    id:"Footpad"
    name: _ "Footpad"
    -- wmllint:" general spelling footpads"
    race:"human"
    gender:{"male","female"}
    hitpoints:30
    movement_type:"elusivefoot"
    movement:7
    experience:36
    level:1
    alignment:"chaotic"
    advances_to:"Outlaw"
    cost:14
    usage:"scout"
    description: _ "These petty criminals are often derisively called ‘footpads’ by their superiors, for they are tasked with any job that requires a great deal of running around, often being employed as couriers, or scouts. The endurance and agility they gain from this serves them well in combat, and despite their inferior weaponry they are quite good at harrying their enemies, especially under cover of darkness."
    attack:
        name:"club"
        description: _ "club"
        type:"impact"
        range:"melee"
        damage:4
        number:2
    attack:
        name:"sling"
        description: _ "sling"
        type:"impact"
        range:"ranged"
        damage:5
        number:2
    female:
        name: _ "female^Footpad"
        gender:"female"
