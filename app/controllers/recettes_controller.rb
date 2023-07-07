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

  def new
    @recette = Recette.new
    @ingredients = Ingredient.all
  end

  def create
    @recette = Recette.new(recette_params)
    if @recette.save
      redirect_to accueil_path, notice: 'La recette a été créée avec succès.'
    else
      @ingredients = Ingredient.all
      render :new
    end
  end

  def destroy
    recette = Recette.find_by(nom: params[:nom])

    if recette.nil?
      flash[:notice] = "La recette n'existe pas."
    else
      recette.destroy
      flash[:notice] = "La recette a été supprimée avec succès."
    end

    redirect_to accueil_path
  end

  private


  def accueil_path
    '/accueil' 
  end

  def recette_params
    params.require(:recette).permit(:nom, ingredient_ids: [])
  end
end
