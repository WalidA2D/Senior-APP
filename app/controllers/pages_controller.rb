class PagesController < ApplicationController

    def accueil
        @recette = params[:recette]
    end

end