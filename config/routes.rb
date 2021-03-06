Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "restaurants#index" 
  get "restaurants", to: "restaurants#index"
  get "restaurants/:id", to: "restaurants#show", as: :resto_show

  # EDIT / UPDATE
  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restauransts#create"

  # Appliquer
  # resources :restaurants, except: :index do
  # resources :reviews, only: [:create]
  end
end
