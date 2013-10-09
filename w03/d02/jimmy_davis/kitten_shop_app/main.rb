require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

get '/' do
  erb :index
end

get '/kittens/new' do
  erb :new_kitten
end

# POST /kittens
# - Creates a new kitten in the database
# - returns a hash representation of that kitten

db_connect = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
sql = "SELECT * FROM kittens"
db_connect.exec(sql)

post '/kittens' do
  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  db_connect = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}', #{age}, '#{is_cute}', '#{image_url}')"
  db_connect.exec(sql)
  db_connect.close
  redirect to '/kittens'
end

# GET /kittens
# - Asks the database for all of the kittens
# - returns an array of hashes where each hash represents the properties of the kitten

get '/kittens' do
  db_connect = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
  sql = "SELECT * FROM kittens"
  response = db_connect.exec(sql)
  db_connect.close
  @kittens = response.entries
  erb :view_kittens
end

# GET  /kittens/:id
# - Asks the database for a single kitten
# - returns a single hash representing a single kitten

get '/kittens/:id' do

end

# # EVERYTHING AFTER IS EXTRA CREDIT

# POST /kittens/:id/delete
# - Removes a kitten from the database
# - returns `true` if it was able to remove the kitten

# POST /kittens/:id
# - takes any of the passed in parameters
# - updates only those parameters for a single kitten
