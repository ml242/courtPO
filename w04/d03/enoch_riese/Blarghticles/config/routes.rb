Blarghticles::Application.routes.draw do
  root to: "articles#index"
  resources :articles
  resources :comments
  get "articles/:id/delete" => "articles#destroy"
  get "comments/:id/delete" => "comments#destroy"
end
