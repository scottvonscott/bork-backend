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
entry_text: "You grab a torch off the wall as you walk through the door. The second level below smells terrible, but you desend.",
exit_text: "It's too quiet and you realize you don't hear Bork crying anymore. You begin to run."
)

DungeonLevel.create(level_number: 3,
entry_text: "The third level seems to glow with it's own unearthly light, the cave walls glitter with jewels and bright veins of silvery gold.",
exit_text: "You know the way out and nothing can stop you!"
)