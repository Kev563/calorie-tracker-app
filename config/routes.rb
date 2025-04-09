Rails.application.routes.draw do
  root "home#index"

  get "about", to: "home#about"
  get "login", to: "home#login"
  get "progress", to: "progress#index"
  get "calculator", to: "calculator#index"
  post "calculator", to: "calculator#calculate"
  get "foodlog", to: "food_log#index"
  get "progress", to: "progress#index"
  post "progress", to: "progress#create"

end
