Rails.application.routes.draw do

  get 'home/index'

  resources :games
  resources :categories
  resources :utents
  resources :orders
  resources :lines

  root 'home#index'

end
