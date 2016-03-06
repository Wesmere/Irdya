unit_type
    id: "Elvish Fighter"
    name: _ "Elvish Fighter"
    race: "elf"

    hitpoints:33
    movement_type: "woodland-less-nimble"
    movement:5
    experience:40
    level:1
    alignment:"neutral"
    advances_to: {"Elvish Captain","Elvish Hero"}
    cost:14
    usage: "fighter"
    description: _ "Elves are not warlike by nature, but in times of need, their natural grace and agility serve them well, as does their skillful craftsmanship. An elf can grasp the basics of swordsmanship and archery in a time uncannily short by the standards of other races, and put them to effective use on the battlefield."

    attack:
        id: "sword"
        name: "sword"
        description:_"sword"
        type: "blade"
        range: "melee"
        damage:5
        number:4

    attack:
        id: "bow"
        name: "bow"
        description: _"bow"
        type: "pierce"
        range:"ranged"
        damage:3
        number:3

