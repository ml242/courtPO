PokemonApp::Application.routes.draw do

  # Gym Routes
  get '/gyms' => 'gyms#index'

  get '/gyms/new' => 'gyms#new'

  get '/gyms/:id' => 'gyms#show'

  get '/gyms/:id/edit' => 'gyms#edit'

  post '/gyms' => 'gyms#create'

  put '/gyms/:id' => 'gyms#update'

  delete '/gyms/:id' => 'gyms#destroy'

end
