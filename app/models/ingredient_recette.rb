class IngredientRecette < ApplicationRecord
  self.table_name = "ingredients_recettes"
  
  belongs_to :recette
  belongs_to :ingredient
end