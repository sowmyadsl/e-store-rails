Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"

  resources :products do
    resources :reviews
  end

  resource :cart, only: [:show]

  resources :order_items

  resources :accounts

  resources :orders

  resources :charges

end
