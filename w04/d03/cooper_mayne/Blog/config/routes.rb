Blog::Application.routes.draw do
  resources :articles do
    resources :comments, only: [:destroy, :update]
  end
  resources :comments, only: [:create]
end

#== Route Map
# Generated on 17 Oct 2013 18:55
#
#                 DELETE /articles/:article_id/comments/:id(.:format) comments#destroy
#        articles GET    /articles(.:format)                          articles#index
#                 POST   /articles(.:format)                          articles#create
#     new_article GET    /articles/new(.:format)                      articles#new
#    edit_article GET    /articles/:id/edit(.:format)                 articles#edit
#         article GET    /articles/:id(.:format)                      articles#show
#                 PUT    /articles/:id(.:format)                      articles#update
#                 DELETE /articles/:id(.:format)                      articles#destroy
#        comments POST   /comments(.:format)                          comments#create
