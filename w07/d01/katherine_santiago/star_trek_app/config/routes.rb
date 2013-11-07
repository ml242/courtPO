StarTrekApp::Application.routes.draw do
  root to: 'welcome#index'

  resources :star_ships
  resources :refugees
  resources :crew_members
end
