Rails.application.routes.draw do
  devise_for :users
  root to: 'entrances#index'
  resources :all_inputs, only: [:index]do
    resources :inputs, only: :index
  end
end
