Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :books
  root 'store#index', as: 'store_index' 
end
