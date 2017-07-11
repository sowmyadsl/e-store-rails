Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"

  resources :products do
    resources :reviews
  end

  resources :order_items

  resources :accounts

  resources :orders
end
