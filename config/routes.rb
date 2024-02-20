Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "photos#index"

  devise_for :users
  
  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos

  get ":username" => "users#show", as: :user
  get ":username/liked" => "users#liked", as: :liked
  get ":username/feed" => "users#feed", as: :feed
  get ":username/followers" => "users#follower", as: :follower
  get ":username/following" => "users#following", as: :following
end
