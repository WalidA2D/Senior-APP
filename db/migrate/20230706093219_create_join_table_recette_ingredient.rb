class CreateJoinTableRecetteIngredient < ActiveRecord::Migration[7.0]
  def change
    create_join_table :recettes, :ingredients do |t|
      t.index [:recette_id, :ingredient_id]
      t.index [:ingredient_id, :recette_id]
    end
  end
end
