Blog::Application.routes.draw do
  root to: 'articles#index'

  resources :articles

  post '/comments' => 'comments#create'

end

#== Route Map
# Generated on 17 Oct 2013 19:41
#
#     articles GET    /articles(.:format)          articles#index
#              POST   /articles(.:format)          articles#create
#  new_article GET    /articles/new(.:format)      articles#new
# edit_article GET    /articles/:id/edit(.:format) articles#edit
#      article GET    /articles/:id(.:format)      articles#show
#              PUT    /articles/:id(.:format)      articles#update
#              DELETE /articles/:id(.:format)      articles#destroy
#     comments POST   /comments(.:format)          comments#create
