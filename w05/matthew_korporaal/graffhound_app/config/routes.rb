GraffhoundApp::Application.routes.draw do
  resources :users, :artists, :location
  resources :welcome, only: [:new]
  resources :sessions, only: [:new, :create, :destroy]
  resources :pieces do
    resources :comments, :only => [:create]
  end

  root to: 'welcome#home'
  get '/signup' => "users#new"
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

end
