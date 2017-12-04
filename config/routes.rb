Rails.application.routes.draw do
  resources :logs
  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#index", format: false
  get "login" => "top#login", as: "login", format: false
  get "progress" => "top#progress", as: "progress", format: false
end
