StarTrekApp::Application.routes.draw do

  root to: 'welcome#index'

  resources :star_ships, defaults: { format: :json }
  resources :refugees, defaults: { format: :json }
  resources :crew_members, defaults: { format: :json }

end