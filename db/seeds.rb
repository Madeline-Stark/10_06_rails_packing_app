# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

items = {shoes: 1, la_croix: 200, sunscreen: 6, towels: 3, chair: 34}
items.each {|item, quantity| Item.create(name: item, quantity: quantity)}
