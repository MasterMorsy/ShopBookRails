Rails.application.routes.draw do
  resources :books
  root 'store#index', as: 'store_index' 
end
