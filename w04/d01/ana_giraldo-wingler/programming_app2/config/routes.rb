ProgrammingApp2::Application.routes.draw do

  get '/programmers' => 'programmer#index'
  get '/programmers/:id' => 'programmer#show'

end