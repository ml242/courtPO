WineApp::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.
  get    '/countries'            =>  'countries#index'    # r
  get    '/countries/new'        =>  'countries#new'      # c
  post   '/countries'            =>  'countries#create'   # c
  get    '/countries/:id'        =>  'countries#show'     # r
  get    '/countries/:id/edit'   =>  'countries#edit'     # u
  post   '/countries/:id'        =>  'countries#update'   # u
  delete '/countries/:id'        =>  'countries#destroy'  # d

  get    '/regions'            =>  'regions#index'    # r
  get    '/regions/new'        =>  'regions#new'      # c
  post   '/regions'            =>  'regions#create'   # c
  get    '/regions/:id'        =>  'regions#show'     # r
  get    '/regions/:id/edit'   =>  'regions#edit'     # u
  post   '/regions/:id'        =>  'regions#update'   # u
  delete '/regions/:id'        =>  'regions#destroy'  # d

  get    '/wineries'            =>  'wineries#index'    # r
  get    '/wineries/new'        =>  'wineries#new'      # c
  post   '/wineries'            =>  'wineries#create'   # c
  get    '/wineries/:id'        =>  'wineries#show'     # r
  get    '/wineries/:id/edit'   =>  'wineries#edit'     # u
  post   '/wineries/:id'         =>  'wineries#update'  # u
  delete '/wineries/:id'         =>  'wineries#destroy' # d


  # resources :country, :region, :winery





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
