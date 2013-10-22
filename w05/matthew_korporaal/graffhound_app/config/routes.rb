GraffhoundApp::Application.routes.draw do
  resources :users, :artists, :pieces, :location
  resources :welcome, only: [:new]
  resources :sessions, only: [:new, :create, :destroy]

  get '/' => 'welcome#index'
  get '/signup' => "users#new"
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'
  get '/artists' => 'artists#index'
  get '/artists/:id' => 'artists#show'
  get '/pieces' => 'pieces#index'
  get '/pieces/:id' => 'pieces#show'
  get '/location' => 'location#index'
  get '/location/:id' => 'location#show'

end
