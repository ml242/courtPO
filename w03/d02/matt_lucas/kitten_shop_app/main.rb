require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

get '/' do
  # db_conn = PG.connect(:dbname => 'pet_shop_db', :host => 'localhost')
  # sql = "Select * FROM kittens;"
  # response = db_conn.exec(sql)
  # @cats = response
  # db_conn.close
  erb :index
end

get '/kittens' do
  db_conn = PG.connect(:dbname => 'pet_shop_db', :host => 'localhost')
  sql = "Select * FROM kittens;"
  response = db_conn.exec(sql)
  @cats = response.entries
  db_conn.close
  erb :kittens
end

post '/kittens' do
  kitten_name = params["kitten_name"]
  age = params["age"]
  is_cute = params["is_cute"]
  img_url = params["img_url"]
  email = params["email"]
  db_conn = PG.connect(:dbname => 'pet_shop_db', :host => 'localhost')
  sql = "INSERT INTO kittens (name, age, is_cute, img_url) VALUES ('#{kitten_name}', #{age}, '#{is_cute}', '#{img_url}');"
  db_conn.exec(sql)
  db_conn.close
  owner_name = params["owner_name"]
  owner_email = params["owner_email"]
  db_conn = PG.connect(:dbname => 'pet_shop_db', :host => 'localhost')
  sql = "INSERT INTO owners (name, email) VALUES ('#{owner_name}', '#{owner_email}');"
  db_conn.exec(sql)
  db_conn.close
  redirect to '/kittens'
end

get '/drop' do
  db_conn = PG.connect(:dbname => 'pet_shop_db', :host => 'localhost')
  sql = "Select * FROM owners;"
  response = db_conn.exec(sql)
  @owners = response.entries
  db_conn.close
  erb :drop
end


get '/kittens/:id' do
  "an individual kitty waiting to be adopted or whatever"
end

# post '/kittens/:id' do
#   "an individual kitty waiting to be adopted or whatever"
# end