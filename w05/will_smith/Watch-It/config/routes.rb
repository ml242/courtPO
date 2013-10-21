WatchIt::Application.routes.draw do
  get "main" => "home#index", :as => "/home/index"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "home#index"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
