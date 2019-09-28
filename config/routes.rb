Rails.application.routes.draw do
  get "admin" => "admin#index"

  controller :sessions do
    get "login" => :new
    post "login" => :create
    delete "logout" => :destroy
  end

  resources :users

  scope "(:locale)" do
    resources :orders
    resources :line_items
    resources :carts
    resources :books
    root "store#index", as: "store_index", via: :all
  end
end
