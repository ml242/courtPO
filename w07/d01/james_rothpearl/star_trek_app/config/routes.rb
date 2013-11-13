StarTrekApp::Application.routes.draw do
  root to: 'welcome#index'

  resources :star_ships
  resources :refugees, defaults: { :format => :json }
  resources :crew_members, defaults: { :format => :json }
end
#== Route Map
# Generated on 04 Nov 2013 17:28
#
#       star_ships GET    /star_ships(.:format)            star_ships#index
#                  POST   /star_ships(.:format)            star_ships#create
#    new_star_ship GET    /star_ships/new(.:format)        star_ships#new
#   edit_star_ship GET    /star_ships/:id/edit(.:format)   star_ships#edit
#        star_ship GET    /star_ships/:id(.:format)        star_ships#show
#                  PUT    /star_ships/:id(.:format)        star_ships#update
#                  DELETE /star_ships/:id(.:format)        star_ships#destroy
#         refugees GET    /refugees(.:format)              refugees#index {:format=>:json}
#                  POST   /refugees(.:format)              refugees#create {:format=>:json}
#      new_refugee GET    /refugees/new(.:format)          refugees#new {:format=>:json}
#     edit_refugee GET    /refugees/:id/edit(.:format)     refugees#edit {:format=>:json}
#          refugee GET    /refugees/:id(.:format)          refugees#show {:format=>:json}
#                  PUT    /refugees/:id(.:format)          refugees#update {:format=>:json}
#                  DELETE /refugees/:id(.:format)          refugees#destroy {:format=>:json}
#     crew_members GET    /crew_members(.:format)          crew_members#index {:format=>:json}
#                  POST   /crew_members(.:format)          crew_members#create {:format=>:json}
#  new_crew_member GET    /crew_members/new(.:format)      crew_members#new {:format=>:json}
# edit_crew_member GET    /crew_members/:id/edit(.:format) crew_members#edit {:format=>:json}
#      crew_member GET    /crew_members/:id(.:format)      crew_members#show {:format=>:json}
#                  PUT    /crew_members/:id(.:format)      crew_members#update {:format=>:json}
#                  DELETE /crew_members/:id(.:format)      crew_members#destroy {:format=>:json}
