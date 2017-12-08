Rails.application.routes.draw do
  resources :logs
  resources :members
  resource :session, only: [:create, :destroy], format: false
  resource :account, only: [:show], format: false
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#index", format: false
  get "login" => "accounts#login", as: "login", format: false
  get "logout" => "accounts#logout", as: "logout", format: false
  get "progress" => "top#progress", as: "progress", format: false
end
