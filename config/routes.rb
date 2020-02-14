Rails.application.routes.draw do
  devise_for :users
  root to: 'entrances#index'
  resources :all_outputs, only: [:index]
  resources :lessons do
    resources :inputs , only: [:index]
  end
end

