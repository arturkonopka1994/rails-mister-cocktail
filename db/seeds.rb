# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

class IngredientApi
  
  def initialize
    @url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
    retrieve_data
  end

  def retrieve_data
    opened = open(@url).read
    @data = JSON.parse(opened)
  end

  def extract_lines
    drinks = @data["drinks"]
    drinks.map do |line|
      newHash = {
        name: line["strIngredient1"]
      }
    end
  end
end

Ingredient.create(IngredientApi.new.extract_lines)