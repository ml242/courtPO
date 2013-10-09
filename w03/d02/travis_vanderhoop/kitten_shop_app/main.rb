require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

get '/' do
  "/ Works"
end

post '/kittens' do
  name = params[:name]
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  db_conn = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
  sql = "INSERT INTO kittens (name, is_cute, image_url) VALUES ('#{name}', '#{is_cute}', '#{image_url}')"
  db_conn.exec(sql)                 # creates a new kitten in the database
  binding.pry
  db_conn.close                       #always be closing
  redirect to ('/kittens')

# - returns a hash representation of that kitten
  end

get '/kittens' do

  db_conn = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
  sql = "SELECT * FROM kittens"
  response = db_conn.exec(sql)
  @kittens = response.entries            # - Asks the database for all of the kittens
  @kittens.to_s                                     # - (last line needs to be a string if no erb) returns an array of hashes where each hash represents the properties of the kitten
  db_conn.close                                   #always be closing
  "balls"
  erb :kitten_list
end

get '/kittens/:id' do
  @kitten = params[:id]
  "get /kittens/:id works"
# - Asks the database for a single kitten
# - returns a single hash representing a single kitten
end


# # EVERYTHING AFTER IS EXTRA CREDIT

# POST /kittens:/id/delete
# - Removes a kitten from the database
# - returns `true` if it was able to remove the kitten

# POST /kittens/:id
# - takes any of the passed in parameters
# - updates only those parameters for a single kitten
