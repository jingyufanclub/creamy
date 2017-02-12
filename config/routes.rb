Rails.application.routes.draw do
  root to:'static#index'
  resources :ingredients
  resources :creams
  resources :formats, only: [:show, :index]
end
