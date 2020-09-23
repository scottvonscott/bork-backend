# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


DungeonLevel.create(level_number: 1,
entry_text: "You decend into the first level of the caves. Why are there lit torches lining the walls? That's weird...",
exit_text: "You press on. Further in, there's a heavy wooden door embeded in the cave walls. It creaks open as you approach."
)

DungeonLevel.create(level_number: 2,
entry_text: "You grab a torch off the wall as you walk through the door. The second level below smells terrible, but you descend.",
exit_text: "It's too quiet and you realize you don't hear Bork crying anymore. You begin to run."
)

DungeonLevel.create(level_number: 3,
entry_text: "The third level seems to glow with it's own unearthly light, the cave walls glitter with jewels and bright veins of silvery gold.",
exit_text: "You know the way out and nothing can stop you!"
)

Monster.create(name: "Giant Rat", health: 10, attack: 5, dungeon_level_id: 1, img_url: "https://www.worldanvil.com/uploads/images/4bc0da1239af04560ef87f173083429e.jpg",
intro_text: "A Giant Rat scurries around the corner, chittering furiously.",
quote: "You'll brie sorry you crossed me!",
death_text: "The Giant Rat falls over dead. A few items fall out his bag and you help yourself. You unfortunately can't think of a cheese pun.",
)

Monster.create(name: "Minotaur", health: 15, attack: 8, dungeon_level_id: 2, img_url: "https://gamertweak.com/wp-content/uploads/2020/05/minotaur-assassins-creed-odyssey.jpg",
intro_text: "A huge Minotaur runs up and snorts heavily. He flexes his muscles for you",
quote: "I'm the beefiest!",
death_text: "The Minotaur falls over dead, knocking over a chest of items. Cow punnnnn",
)

Monster.create(name: "Dragon", health: 30, attack: 15, dungeon_level_id: 3, img_url: "https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2014/12/9/1418121741203/Smaug-011.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=da5839aacac848a16bff061cdf73d3e9",
intro_text: "An enormous Dragon sits upon a huge pile of treasure. She roars and breathes fire into the air.",
quote: "Giant piles of treasure offer very poor lumbar support.",
death_text: "The Dragon falls over dead.",
)

LootItem.create(name: "Steel Sword", dungeon_level_id: 1, bonus_type: "Attack", bonus: 5,
description: "Stick 'em with the pointy end"
)

LootItem.create(name: "Steel Kite Shield", dungeon_level_id: 1, bonus_type: "Health", bonus: 5,
description: "What idiot thought this could fly?"
)

# LootItem.create(name: , dungeon_level_id: 1, bonus_type: , bonus: ,
# description: ""
# )

LootItem.create(name: "Valyrian Steel Sword", dungeon_level_id: 2, bonus_type: "Attack", bonus: 10,
description: "I dun wan it"
)

LootItem.create(name: "Mithril Armor", dungeon_level_id: 2, bonus_type: "Health", bonus: 10,
description: "You're full of suprises Master Baggins"
)

# LootItem.create(name: , dungeon_level_id: 2, bonus_type: , bonus: ,
# description: ""
# )