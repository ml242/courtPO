PokedexApp::Application.routes.draw do

  get '/' => redirect('/gyms')

  get '/gyms' => 'gyms#index'
  get '/gyms/new' => 'gyms#new'
  get '/gyms/:id' => 'gyms#show'
  get '/gyms/:id/edit' => 'gyms#edit'
  post '/gyms' => 'gyms#create'
  post '/gyms/:id' => 'gyms#update'
  post '/gyms/:id/delete' => 'gyms#destroy'

  get '/trainers' => 'trainers#index'
  get '/trainers/new' => 'trainers#new'
  get '/trainers/:id' => 'trainers#show'
  get '/trainers/:id/edit' => 'trainers#edit'
  post '/trainers' => 'trainers#create'
  post '/trainers/:id' => 'trainers#update'
  post '/trainers/:id/delete' => 'trainers#destroy'

  get '/pokemons' => 'pokemons#index'
  get '/pokemons/new' => 'pokemons#new'
  get '/pokemons/:id' => 'pokemons#show'
  get '/pokemons/:id/edit' => 'pokemons#edit'
  post '/pokemons' => 'pokemons#create'
  post '/pokemons/:id' => 'pokemons#update'
  post '/pokemons/:id/delete' => 'pokemons#destroy'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
