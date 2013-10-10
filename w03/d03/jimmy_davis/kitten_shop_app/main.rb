require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'kitten_shop_db', :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result
  end
end

get '/' do
  erb :index
end

get '/kittens/new' do
  owners = params[:name]
  sql = "SELECT * FROM owners"
  response = db_exec(sql)
  @owners = response.entries
  erb :new_kitten
end

get '/owners/new' do
  erb :new_owner
end

# POST /kittens
# - Creates a new kitten in the database
# - returns a hash representation of that kitten

# db_connect = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
# sql = "SELECT * FROM kittens"
# db_connect.exec(sql)

post '/kittens' do
  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}', #{age}, '#{is_cute}', '#{image_url}')"
  db_exec(sql)
  redirect to '/kittens'
end

# GET /kittens
# - Asks the database for all of the kittens
# - returns an array of hashes where each hash represents the properties of the kitten

get '/kittens' do
  sql = "SELECT * FROM kittens"
  response = db_exec(sql)
  # response.entries.to_s will just print out array of hash of kittens
  @kittens = response.entries
  erb :view_kittens
end

# GET  /kittens/:id
# - Asks the database for a single kitten
# - returns a single hash representing a single kitten

get '/kittens/:id' do
  id = params[:id]
  sql = "SELECT id FROM kittens WHERE id = #{id}"
  response = db_exec(sql)
  p response.entries.to_s
end

post '/owners' do
  name = params[:name]
  sql = "INSERT INTO owners (name) VALUES ('#{name}')"
  db_exec(sql)
  redirect to '/owners'
end

get '/owners' do
  sql = "SELECT * FROM owners"
  response = db_exec(sql)
  # response.entries.to_s will just print out array of hash of owners
  @owners = response.entries
  erb :view_owners
end





# # EVERYTHING AFTER IS EXTRA CREDIT

# POST /kittens/:id/delete
# - Removes a kitten from the database
# - returns `true` if it was able to remove the kitten

# POST /kittens/:id
# - takes any of the passed in parameters
# - updates only those parameters for a single kitten
