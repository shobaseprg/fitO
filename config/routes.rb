Rails.application.routes.draw do
  root to: 'entrances#index'
  # resources :entrances, only: [:index]
  resources :all_inputs, only: [:index]
end
