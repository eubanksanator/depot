Rails.application.routes.draw do
  resources :line_items do
end
  resources :carts
  get 'store/index'

  resources :products
  root 'store#index', as: 'store'
end
