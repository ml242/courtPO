ProgrammingApp::Application.routes.draw do

  get '/' => 'index#redirect'

  get '/programmers' => 'programmer#index'
  post '/programmers' => 'programmer#create'

  get '/programmers/:id' => 'programmer#view'

  get '/programmers/:id/edit' => 'programmer#edit'
  post '/programmers/:id' => 'programmer#edit'

  post '/programmers/:id/delete' => 'programmer#delete'

end
