BlargsticleApp::Application.routes.draw do
  root to: 'articles#index'
  resources :articles
 #article_index GET    /articles(.:format)          article#index
 #              POST   /articles(.:format)          article#create
 #  new_article GET    /articles/new(.:format)      article#new
 # edit_article GET    /articles/:id/edit(.:format) article#edit
 #      article GET    /articles/:id(.:format)      article#show
 #              PUT    /articles/:id(.:format)      article#update
 #              DELETE /articles/:id(.:format)      article#destroy
end
#== Route Map
# Generated on 17 Oct 2013 21:44
#
