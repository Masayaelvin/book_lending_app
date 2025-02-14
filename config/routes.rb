# This file defines the routes for the book library application.
# It maps HTTP requests to controller actions, specifying which controller and action should handle each request.
# The routes include:
# - User registration and login/logout
# - Borrowing creation and destruction
# - Viewing books (index and show)
# - Session management
# - Password management with token parameter
# The root path is set to the books index action.

Rails.application.routes.draw do
  
  get "users/new"
  get "users/create"
  get "borrowings/create"
  get "borrowings/destroy"
  get "books/index"
  get "books/show"

  resource :session
  resources :passwords, param: :token

  root "books#index"

  resources :books, only: [:index, :show]
  resources :borrowings, only: [:create, :destroy]


  get "/register", to: "users#new", as: :register
  post "/register", to: "users#create"  

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"

  get "/profile", to: "users#show", as: :user_profile
end
