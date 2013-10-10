require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

# Add an owners table to app database --> Done

# Owners will need an id and a name --> Done
# Give your kittens owners --> Done

# When you display a kitten, list their owner's name

# Create a form to create new owners

# In the create kitten form, add a dropdown to choose which Owner owns the kitten

# The dropdown form should display all the owners names from your owners table

get '/' do
  erb :index
end

# GET /kittens
# - Asks the database for all of the kittens
# - returns an array of hashes where each hash represents the properties of the kitten

get '/kittens' do
  db_connect = PG.connect(:dbname => 'kittens_inventory_db', :host => 'localhost')
  sql = 'SELECT * FROM kittens'
  results = db_connect.exec(sql)
  db_connect.close
  @kittens = results.entries
  erb :kittens
end

# POST /kittens
# - Creates a new kitten in the database
# - returns a hash representation of that kitten

post '/kittens' do
  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  db_conn = PG.connect(:dbname => 'kittens_inventory_db', :host => 'localhost')
  sql = "INSERT into kittens (name, age, is_cute, image_url) VALUES ('#{name}', '#{age}', '#{is_cute}', '#{image_url}' )"
  db_conn.exec(sql)
  db_conn.close
  # create sql command
  # execute sql
  #close db
  redirect to '/kittens'
end

# GET  /kittens/:id
# - Asks the database for a single kitten
# - returns a single hash representing a single kitten

get '/kittens/:id' do
  id = params[:id]
  db_connect = PG.connect(:dbname => 'kittens_inventory_db', :host => 'localhost')
  sql = "SELECT * FROM kittens WHERE id = #{id}"
  results = db_connect.exec(sql)
  db_connect.close
  @kitten = results.entries[0]

  db_connect = PG.connect(:dbname => 'kittens_inventory_db', :host => 'localhost')
  sql = "SELECT * FROM owners WHERE id = #{id}"
  results = db_connect.exec(sql)
  db_connect.close
  @owners = results.entries[0]
  erb :profile
  end



