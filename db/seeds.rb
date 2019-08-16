# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'Faker'
require 'open-uri'
require 'json'

  response = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list")
  json = JSON.parse(response.read)
  word = json['drinks'].map {|i| i.values}.flatten

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
150.times do
Ingredient.create(name: word.sample)
end

Dose.create(description: 3, cocktail_id: 1, ingredient_id: 1)
Dose.create(description: 4, cocktail_id: 2, ingredient_id: 2)

Cocktail.create(name: "Mojito")
Cocktail.create(name: "Moscow Mule")

# private
