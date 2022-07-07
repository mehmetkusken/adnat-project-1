Rails.application.routes.draw do
  resources :shifts

  resources :organisations do
    resources :users
  end

  delete "/logout", to: "sessions#logout", as: "logout"
  get "/login", to: "sessions#login", as: "login"
  post "/login", to: "sessions#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
