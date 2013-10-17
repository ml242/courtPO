Blog::Application.routes.draw do
  resources :articles do
    resources :comments, only: [:index, :new, :create, :destroy, :update]
  end
end
