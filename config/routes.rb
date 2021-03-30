Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#top"
  get "map/index", to: "map#index"
  get "map/:id", to: "map#show"
  post "map/create", to: "map#create"
end
