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

post '/kittens' do
  name = params['name']
  age = params['age']
  is_cute = params['is_cute']
  image_url = params['image_url']
  db_conn = PG.connect(:dbname => 'petshop_db', :host =>'localhost')
  sql = "INSERT INTO kittens (id, name, age, is_cute, image_url) VALUES (#{name}', '#{age}', '#{is_cute}', '#{image_url}')"
  db_conn.exec(sql)
  db_conn.close

redirect to '/kittens'
end


get '/kittens' do
  db_conn = PG.connect(:dbname => 'petshop_db', :host =>'localhost')
  sql = "SELECT * FROM kittens"
  kittens = db_conn.exec(sql)
  @kittens = kittens.entries

  db_conn.close
  erb :kittens
end


# GET  /kittens/:id
# - Asks the database for a single kitten
# - returns a single hash representing a single kitten

get '/kittens/:id' do
  db_conn = PG.connect(:dbname => 'petshop_db', :host =>'localhost')
  sql = "SELECT * FROM kittens"
  kittens = db_conn.exec(sql)
  @kittens = kittens.entries

  db_conn.close
  erb :kittens
end


# # EVERYTHING AFTER IS EXTRA CREDIT

# POST /kittens/:id/delete
# - Removes a kitten from the database
# - returns `true` if it was able to remove the kitten

# POST /kittens/:id
# - takes any of the passed in parameters
# - updates only those parameters for a single kitten