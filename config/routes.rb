Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  patch 'capture', to: 'pokemons#capture', :as => 'capture'
  patch 'damage', to: 'pokemons#damage', :as => 'damage'
  resources :trainers

  get "pokemons/new", to: "pokemons#new"
  post "pokemons", to: "pokemons#create"
end
