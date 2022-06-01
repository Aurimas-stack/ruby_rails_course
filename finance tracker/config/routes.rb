Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destory]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "tracker#index"
  get "my_portfolio", to: "users#my_portfolio"
  get "search_stock", to: "stocks#search", defaults: { format: 'js' }
  get "my_friends", to: "users#my_friends"
  get "search_friend", to: "users#search"
  resources :friendships, only: [:create, :destory]
  resources :users, only: [:show]
end
