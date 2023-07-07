Rails.application.routes.draw do

  get '/accueil', to: 'pages#accueil', as:'accueil_path' 

  get '/accueil/:nom/edit', to: 'recettes#edit', as: 'edit_recette'
  patch '/recettes/:nom', to: 'recettes#update', as: 'update_recette'

  get '/recettes/new', to: 'recettes#new', as: 'new_recette'
  post '/recettes', to: 'recettes#create', as: 'create_recette'

  delete '/recettes/:nom/delete', to: 'recettes#destroy', as: 'delete_recette'
end
