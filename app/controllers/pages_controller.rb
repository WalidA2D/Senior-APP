class PagesController < ApplicationController
    def accueil
      @recettes = Recette.select("recettes.nom AS recette_nom, GROUP_CONCAT(ingredients.nom SEPARATOR ', ') AS ingredients")
                         .joins(:ingredients)
                         .group("recettes.id")
                         .map do |row|
                           {
                             recette_nom: row['recette_nom'],
                             ingredients: row['ingredients'].split(", "),
                           }
                         end
    end
  end
  