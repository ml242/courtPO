CourtPO::Application.routes.draw do
  resources :users
  resources :welcome, only: [:new]
  resources :sessions, only: [:new, :create, :destroy]
  resources :cases do
    resources :solutions, :only => [:create, :destroy]
  end

  root to: 'welcome#home'
  get '/signup' => 'users#new'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'
end
#== Route Map
# Generated on 09 Nov 2013 23:40
#
#                POST   /users(.:format)                        users#create
#       new_user GET    /users/new(.:format)                    users#new
#      edit_user GET    /users/:id/edit(.:format)               users#edit
#           user GET    /users/:id(.:format)                    users#show
#                PUT    /users/:id(.:format)                    users#update
#                DELETE /users/:id(.:format)                    users#destroy
#    new_welcome GET    /welcome/new(.:format)                  welcome#new
#       sessions POST   /sessions(.:format)                     sessions#create
#    new_session GET    /sessions/new(.:format)                 sessions#new
#        session DELETE /sessions/:id(.:format)                 sessions#destroy
# case_solutions POST   /cases/:case_id/solutions(.:format)     solutions#create
#  case_solution DELETE /cases/:case_id/solutions/:id(.:format) solutions#destroy
#          cases GET    /cases(.:format)                        cases#index
#                POST   /cases(.:format)                        cases#create
#       new_case GET    /cases/new(.:format)                    cases#new
#      edit_case GET    /cases/:id/edit(.:format)               cases#edit
#           case GET    /cases/:id(.:format)                    cases#show
#                PUT    /cases/:id(.:format)                    cases#update
#                DELETE /cases/:id(.:format)                    cases#destroy
#           root        /                                       welcome#home
#         signup GET    /signup(.:format)                       users#new
#          login GET    /login(.:format)                        session#new
#                GET    /login(.:format)                        session#create
#         logout GET    /logout(.:format)                       session#destroy
