ProgrammingApp::Application.routes.draw do

  get '/' => 'index#redirect'

  get '/programers' => 'programmer#index'
  post '/programmers' => 'programmer#create'

  get '/programmers/:id' => 'programmer#view'

  get '/programmers/:id/edit' => 'programmer#view_edit'
  post '/programmers/:id' => 'programmer#do_edit'

  post '/programmers/:id/delete' => 'programmer#delete'

end
