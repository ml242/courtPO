CourtPO::Application.routes.draw do
  resources :users
  resources :welcome, only: [:new]
  resources :session, only: [:new, :create, :destroy]
  resources :cases do
    resources :solutions, :only => [:create, :show, :update, :destroy]
  end

  root to: 'welcome#home'
  # get '/signup' => 'users#new'
  # get '/login' => 'session#new'
  # post '/login' => 'session#create'
  # get '/logout' => 'session#destroy'
  # match '/auth/twitter/callback', to: 'sessions#create'
  # match '/auth/:provider/callback', to: 'session#create', via: 'get'
  get '/login' => 'session#new', :as => :login
  get '/auth/:provider/callback' => 'session#create'
  match '/auth/failure', to: redirect('/'), via: 'get'
  match 'signout', to: 'session#destroy', as: 'signout'
  get '/about', to: 'welcome#about'
  get '/logout' => 'session#destroy', as: 'signout'

end
#== Route Map
# Generated on 14 Nov 2013 01:48
#
#                POST   /users(.:format)                        users#create
#       new_user GET    /users/new(.:format)                    users#new
#      edit_user GET    /users/:id/edit(.:format)               users#edit
#           user GET    /users/:id(.:format)                    users#show
#                PUT    /users/:id(.:format)                    users#update
#                DELETE /users/:id(.:format)                    users#destroy
#    new_welcome GET    /welcome/new(.:format)                  welcome#new
#  session_index POST   /session(.:format)                      session#create
#    new_session GET    /session/new(.:format)                  session#new
#        session DELETE /session/:id(.:format)                  session#destroy
# case_solutions POST   /cases/:case_id/solutions(.:format)     solutions#create
#  case_solution PUT    /cases/:case_id/solutions/:id(.:format) solutions#update
#                DELETE /cases/:case_id/solutions/:id(.:format) solutions#destroy
#          cases GET    /cases(.:format)                        cases#index
#                POST   /cases(.:format)                        cases#create
#       new_case GET    /cases/new(.:format)                    cases#new
#      edit_case GET    /cases/:id/edit(.:format)               cases#edit
#           case GET    /cases/:id(.:format)                    cases#show
#                PUT    /cases/:id(.:format)                    cases#update
#                DELETE /cases/:id(.:format)                    cases#destroy
#           root        /                                       welcome#home
#          login GET    /login(.:format)                        session#new
#                GET    /auth/:provider/callback(.:format)      session#create
#   auth_failure GET    /auth/failure(.:format)                 :controller#:action
#        signout        /signout(.:format)                      session#destroy
#          about GET    /about(.:format)                        welcome#about
#        signout GET    /logout(.:format)                       session#destroy
