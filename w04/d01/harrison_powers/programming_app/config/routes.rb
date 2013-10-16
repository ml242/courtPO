ProgrammingApp::Application.routes.draw do

  get '/' => redirect('/programmers')

  get '/programmers' => 'programmers#index'

  post '/programmers' => 'programmers#create'

  get '/programmers/new' => 'programmers#new'

  get '/programmers/:id' => 'programmers#show'

  get '/programmers/:id/edit' => 'programmers#edit'

  post '/programmers/:id' => 'programmers#update'

  post '/programmers/:id/delete' => 'programmers#delete'

end
