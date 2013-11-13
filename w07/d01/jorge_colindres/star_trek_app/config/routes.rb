StarTrekApp::Application.routes.draw do
  root to: 'welcome#index'

  resources :star_ships
  resources :refugees, defaults: { :format => :json }
  resources :crew_members, defaults: { :format => :json }
  resources :captains_logs
end
