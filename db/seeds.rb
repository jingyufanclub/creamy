# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

creams = Cream.create([{name: "the best cream", brand: "avon", cream_type: "gel", price: 12.00, size: 50, notes:"best cream ever"}, {name: "the worst cream", brand: "vaseline", cream_type: "gel", price: 14.00, size: 50, notes:"literally the worst cream ever"}])

ingredients = Ingredient.create([{name: "acid", purpose: "cleaning"}, {name: "pastrami", purpose: "delicious"}])
