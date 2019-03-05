
Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'items#index'
  resources :items
  resources :users, only: [:show, :new, :create]
  resources :carts, only: [:show]


  resources :cart_items, only: [:new, :create, :destroy]



end