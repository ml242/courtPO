Blog::Application.routes.draw do

  root to: 'articles#index'
  resources :articles

  # get '/articles' => 'articles#index'
  # get '/articles/:id' => 'articles#show'
  # get '/articles/new' => 'articles#new'
  # post '/articles' => 'articles#create'


end
