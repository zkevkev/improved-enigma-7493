class Chef < ApplicationRecord
   validates_presence_of :name
   has_many :dishes
   has_many :dish_ingredients, through: :dishes
   has_many :ingredients, through: :dish_ingredients

   def list_ingredients
      ingredients.distinct.pluck(:name).to_sentence
   end
end