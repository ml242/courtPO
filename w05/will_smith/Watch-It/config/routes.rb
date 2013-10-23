WatchIt::Application.routes.draw do
  get "main" => "titles#index", :as => "/titles/index"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  post "titles/show" => "titles#show"
  get "titles/show" => "titles#show"
  root :to => "titles#index"
  resources :users
  resources :playlists
  resources :titles
  resources :reviews

  resources :sessions, only: [:new, :create, :destroy]
end
# ROUTES
#  titles_index GET    /main(.:format)               titles#index
#       log_out GET    /log_out(.:format)            sessions#destroy
#        log_in GET    /log_in(.:format)             sessions#new
#       sign_up GET    /sign_up(.:format)            users#new
#   titles_show POST   /titles/show(.:format)        titles#show
#               GET    /titles/show(.:format)        titles#show
#          root        /                             titles#index
#         users GET    /users(.:format)              users#index
#               POST   /users(.:format)              users#create
#      new_user GET    /users/new(.:format)          users#new
#     edit_user GET    /users/:id/edit(.:format)     users#edit
#          user GET    /users/:id(.:format)          users#show
#               PUT    /users/:id(.:format)          users#update
#               DELETE /users/:id(.:format)          users#destroy
#     playlists GET    /playlists(.:format)          playlists#index
#               POST   /playlists(.:format)          playlists#create
#  new_playlist GET    /playlists/new(.:format)      playlists#new
# edit_playlist GET    /playlists/:id/edit(.:format) playlists#edit
#      playlist GET    /playlists/:id(.:format)      playlists#show
#               PUT    /playlists/:id(.:format)      playlists#update
#               DELETE /playlists/:id(.:format)      playlists#destroy
#        titles GET    /titles(.:format)             titles#index
#               POST   /titles(.:format)             titles#create
#     new_title GET    /titles/new(.:format)         titles#new
#    edit_title GET    /titles/:id/edit(.:format)    titles#edit
#         title GET    /titles/:id(.:format)         titles#show
#               PUT    /titles/:id(.:format)         titles#update
#               DELETE /titles/:id(.:format)         titles#destroy
#       reviews GET    /reviews(.:format)            reviews#index
#               POST   /reviews(.:format)            reviews#create
#    new_review GET    /reviews/new(.:format)        reviews#new
#   edit_review GET    /reviews/:id/edit(.:format)   reviews#edit
#        review GET    /reviews/:id(.:format)        reviews#show
#               PUT    /reviews/:id(.:format)        reviews#update
#               DELETE /reviews/:id(.:format)        reviews#destroy
#      sessions POST   /sessions(.:format)           sessions#create
#   new_session GET    /sessions/new(.:format)       sessions#new
#       session DELETE /sessions/:id(.:format)       sessions#destroy
