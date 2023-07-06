class RecettesController < ApplicationController
  include Rails.application.routes.url_helpers

  def edit
    @recette = Recette.find_by(nom: params[:nom])

    if @recette.nil?
      redirect_to accueil_path, alert: "La recette n'existe pas."
    end
  end

  def update
    @recette = Recette.find_by(nom: params[:nom])

    if @recette.update(recette_params)
      redirect_to accueil_path, notice: 'La recette a été mise à jour avec succès.'
    else
      render :edit
    end
  end

  private

  def accueil_path
    '/accueil' # Remplacez cette valeur par le chemin réel de votre page d'accueil
  end

  def recette_params
    params.require(:recette).permit(:nom, ingredient_ids: [])
  end
end
