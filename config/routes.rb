Rails.application.routes.draw do
  devise_for :users
  root to: 'entrances#index'
  resources :all_outputs, only: [:index ]
  resources :users, only: [:show ,:destroy] 
  resources :lessons ,only:[:update,:new ,:create] do
    resources :inputs , only: [:index, :new, :create,:show,:destroy] 
  end
end

