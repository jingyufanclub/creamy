Rails.application.routes.draw do
  root to:'static#index'
  resources :creams
  resources :formats, only: [:show, :index]
  resources :ingredients
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
