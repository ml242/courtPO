WatchIt::Application.routes.draw do
  get "main" => "titles#index", :as => "/titles/index"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  post "titles/show" => "titles#show"
  root :to => "titles#index"
  resources :users
  resources :titles
  resources :reviews

  resources :sessions, only: [:new, :create, :destroy]
end
