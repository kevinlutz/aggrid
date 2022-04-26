Rails.application.routes.draw do
  resources :grids
  root "grids#index"
  get "inventory" => "inventory#index"
  resources :inventory
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
