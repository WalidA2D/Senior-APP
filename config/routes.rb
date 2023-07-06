Rails.application.routes.draw do

  get '/accueil', to: 'pages#accueil', as:'accueil_path' 

  
  get '/accueil/:nom/edit', to: 'recettes#edit', as: 'edit_recette'

  patch '/recettes/:nom', to: 'recettes#update', as: 'update_recette'
end
