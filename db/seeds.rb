# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require_relative '../config/environment'
require 'json'

Beer.destroy_all
User.destroy_all
UserBeer.destroy_all

beers_array = []
villagers_array = []


id=1
60.times do
    beers = RestClient.get("https://api.punkapi.com/v2/beers/#{id}")
    id +=1
    data = JSON.parse(beers)
    beers_array.push(data)
end



def food_pairings_to_array(beer)
    food_pairings = []
        counter = 0
        while counter < beer[0]["food_pairing"].length
            food_pairings.push(beer[0]["food_pairing"][counter])
            counter +=1
        end
    food_pairings
end

beers_array.each do |beer|
    Beer.create(
        name: beer[0]["name"],
        tag_line: beer[0]["tagline"],
        description: beer[0]["description"],
        image_url: beer[0]["image_url"],
        yeast: beer[0]["yeast"],
        abv: beer[0]["abv"],
        likes: 0,
        dislikes: 0,
        food_pairings: food_pairings_to_array(beer)
    )
end

# meals_array.each do |meal|
#     Meal.create(
#        
#         ingredient: ingredient_to_array(meal),
#         measurement: measurement_to_array(meal)
#     )
# end

# def ingredient_to_array(meal)
#     ingredients_array = []
#     counter = 1
#     while counter <= 20
#         ingredients_array.push(meal["meals"][0]["strIngredient#{counter}"])
#         counter += 1
#     end
#     ingredients_array.reject(&:blank?)
# end



User.create(
    name: "stacey",
    age: 22,
    email: "stacey@gmail.com",
    password: "1234"
)