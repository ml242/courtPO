Setting up a route to default to json

```
# routes.rb
resources :star_ships, defaults: { format: :json }
```

Setting up a controller to respond to html or json

```
# crew_members_controller.rb
respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @crew_members }
end
```

Setting up a controller to respond to json

```
respond_to :json
    def index
    respond_with Mutant.all
end
```

Allowing Ajax requests from different servers

```
# application_controller.rb
after_filter :set_access_control_headers

def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Credentials'] = 'true';
end
```

Resources
 
- http://archives.ryandaigle.com/articles/2009/8/6/what-s-new-in-edge-rails-cleaner-restful-controllers-w-respond_with