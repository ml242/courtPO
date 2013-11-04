StarTrekApp::Application.routes.draw do
  root to: 'welcome#index'

  resources :star_ships
  resources :refugees, defaults: { :format => :json }
  resources :crew_members, defaults: { :format => :json }
end
#== Route Map
# Generated on 04 Nov 2013 17:26
#
#       star_ships GET    /star_ships(.:format)            star_ships#index
#                  POST   /star_ships(.:format)            star_ships#create
#    new_star_ship GET    /star_ships/new(.:format)        star_ships#new
#   edit_star_ship GET    /star_ships/:id/edit(.:format)   star_ships#edit
#        star_ship GET    /star_ships/:id(.:format)        star_ships#show
#                  PUT    /star_ships/:id(.:format)        star_ships#update
#                  DELETE /star_ships/:id(.:format)        star_ships#destroy
#         refugees GET    /refugees(.:format)              refugees#index
#                  POST   /refugees(.:format)              refugees#create
#      new_refugee GET    /refugees/new(.:format)          refugees#new
#     edit_refugee GET    /refugees/:id/edit(.:format)     refugees#edit
#          refugee GET    /refugees/:id(.:format)          refugees#show
#                  PUT    /refugees/:id(.:format)          refugees#update
#                  DELETE /refugees/:id(.:format)          refugees#destroy
#     crew_members GET    /crew_members(.:format)          crew_members#index
#                  POST   /crew_members(.:format)          crew_members#create
#  new_crew_member GET    /crew_members/new(.:format)      crew_members#new
# edit_crew_member GET    /crew_members/:id/edit(.:format) crew_members#edit
#      crew_member GET    /crew_members/:id(.:format)      crew_members#show
#                  PUT    /crew_members/:id(.:format)      crew_members#update
#                  DELETE /crew_members/:id(.:format)      crew_members#destroy
