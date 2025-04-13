Rails.application.routes.draw do
  root "home#index"

  # Static Pages
  get "about", to: "home#about"

  # Authentication
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  # Sign Up
  get "signup", to: "users#new"
  resources :users, only: [:new, :create]

  # Progress tracking
  get "progress", to: "progress#index"
  post "progress", to: "progress#create"

  # Calculator
  get "calculator", to: "calculator#index"
  post "calculator", to: "calculator#calculate"

  # Food Log (handles index, create, edit, update, destroy)
  resources :foodlog, controller: "food_log", only: [:index, :create, :edit, :update, :destroy]
end
