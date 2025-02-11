Rails.application.routes.draw do
  get "users/new"
  get "users/create"
  get "borrowings/create"
  get "borrowings/destroy"
  get "books/index"
  get "books/show"
  resource :session
  resources :passwords, param: :token
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  
    root "books#index"

    resources :books, only: [:index, :show]
    resources :borrowings, only: [:create, :destroy]

    get "/register", to: "users#new", as: :register
    get "/login", to: "sessions#new"
    get"/logout", to: "sessions#destroy" # ✅ Logout route

    get "/profile", to: "users#show", as: :user_profile
  


end