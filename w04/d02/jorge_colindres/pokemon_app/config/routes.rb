PokemonApp::Application.routes.draw do

  # Gym Routes
  get '/gyms' => 'gyms#index'

  get '/gyms/new' => 'gyms#new'

  get '/gyms/:id' => 'gyms#show'

  get '/gyms/:id/edit' => 'gyms#edit'

  post '/gyms' => 'gyms#create'

  put '/gyms/:id' => 'gyms#update'

  delete '/gyms/:id' => 'gyms#destroy'

  # Trainer Routes
  get '/trainers' => 'trainers#index'

  get '/trainers/new' => 'trainers#new'

  get '/trainers/:id' => 'trainers#show'

  get '/trainers/:id/edit' => 'trainers#edit'

  post '/trainers' => 'trainers#create'

  put '/trainers/:id' => 'trainers#update'

  delete '/trainers/:id' => 'trainers#destroy'

end
