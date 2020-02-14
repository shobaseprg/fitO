Rails.application.routes.draw do
  devise_for :users
  root to: 'entrances#index'
  resources :all_inputs, only: [:index]
  resources :lessons 
end
