unit_type
    id:"Wose"
    name: _ "Wose"
    race:"wose"
    hitpoints:52
    movement_type:"treefolk"
    movement:4
    experience:40
    level:1
    alignment:"lawful"
    advances_to:"Elder Wose"
    cost:20
    description: _ "Rarely seen even by elves, the Wose is an order of creature about which little is known. The elves are the source of most of this knowledge; they know that these beings are not descended from trees, despite the similarity in form, and they know that a wose is more closely tied to the faerie world than the elves themselves, though in a different way. The motives and workings of their kind are unknown, though most subscribe to the obvious theory that woses are dedicated wardens of the natural world.

Woses are utterly unwarlike, but possess a great strength. They are, however, neither used to, nor quick at moving around." .. SPECIAL_NOTES .. SPECIAL_NOTES_AMBUSH .. SPECIAL_NOTES_REGENERATES
    usage:"fighter"
    abilities: {
        ABILITY_AMBUSH
        ABILITY_REGENERATES
    }
    attack:
        name:"crush"
        description: _ "crush"
        type:"impact"
        range:"melee"
        damage:13
        number:2
