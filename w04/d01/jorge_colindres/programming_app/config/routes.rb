ProgrammingApp::Application.routes.draw do

  get '/programmers' => 'programmers#index'

  get '/programmers/new' => 'programmers#new'

  get '/programmers/:id' => 'programmers#show'

  get '/programmers/:id/edit' => 'programmers#edit'

  post '/programmers' => 'programmers#create'

  post '/programmers/:id' => 'programmers#update'

  delete '/programmers/:id' => 'programmers#destroy'

  # post '/programmers/:id/delete' => 'programmers#destroy'


end
