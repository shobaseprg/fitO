Rails.application.routes.draw do
  devise_for :users
  root to: 'entrances#index'
  resources :all_outputs, only: [:index ]
  resources :users, only: [:show ,:destroy,:update] 
  resources :lessons ,only:[:update,:new ,:create,:show,:destroy] do
    resources :inputs , only: [:index, :new, :create,:show,] 
  end
end
