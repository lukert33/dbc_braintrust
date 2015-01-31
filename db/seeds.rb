# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

searches = Category.create(name: "Searches")

Question.create(
  title: "Egg Drop",
  prompt: "There is a building of 100 floors. If an egg drops from the Nth floor or above, it will break. If it's dropped from any floor below, it will not break. You're given two eggs. Find N, while minimizing the number of drops, while minimizing the number of drops for the worst case.",
  category_id: searches.id
)

data_structs = Category.create(name: "Data Structures")

Question.create(
  title: "The Min Stack",
  prompt: "How would you design a stack which, in addition to push and pop, also has a function min which returns the minimum element? Push, pop, and min should all operate in O(1) time.",
  category_id: data_structs.id
)
