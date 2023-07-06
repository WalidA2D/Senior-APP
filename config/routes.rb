Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/accueil(/:recette)', to: 'pages#accueil', as:'accueil_path' 


  # Defines the root path route ("/")
  # root "articles#index"
end
