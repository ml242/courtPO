WatchIt::Application.routes.draw do
  get "main" => "titles#index", :as => "/titles/index"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  post "titles/show" => "titles#show"
  root :to => "titles#index"
  resources :users do
    resources :playlist do
      resources :titles do
        resources :reviews
      end
    end
  end

  resources :sessions, only: [:new, :create, :destroy]
end
