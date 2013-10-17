PokemonApp::Application.routes.draw do

  get '/pokemons' => 'pokemons#index'
  get '/pokemons/:id' => 'pokemons#show'
  get '/pokemons/:id/edit' => 'pokemons#edit'
  post '/pokemons/:id' => 'pokemons#update'
  get 'pokemons/new' => 'pokemons#new'
  post 'pokemons' => 'pokemons#add'

  get '/trainers' => 'trainers#index'
  get '/trainers/:id' => 'trainers#show'

  get '/gyms' => 'gyms#index'
  get '/gyms/:id' => 'gyms#show'

end