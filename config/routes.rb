Rails.application.routes.draw do
  
  resources :shops, only: [:new, :create]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#top"
  resources :map
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:destroy]
end
