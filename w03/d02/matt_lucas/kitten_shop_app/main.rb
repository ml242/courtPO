require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

get '/' do
  db_conn = PG.connect(:dbname => 'pet_shop_db', :host => 'localhost')
  sql = "Select * FROM kittens"
  response = db_conn.exec(sql)
  @cats = response
  db_conn.close
  erb :index
end

get '/kittens' do
  db_conn = PG.connect(:dbname => 'pet_shop_db', :host => 'localhost')
  sql = "Select * FROM kittens"
  response = db_conn.exec(sql)
  @cats = response.entries
  db_conn.close
  erb :kittens
end

post '/kittens' do
  erb :kittens
end

get '/drop' do
  erb :drop
end

post 'drop' do
  name = params["name"]
  age = params["age"]
  is_cute = params["is_cute"]
  img_url = params["img_url"]
  db_conn = PG.connect(:dbname => 'pet_shop_db', :host => 'localhost')
  sql = "INSERT INTO kittens (name, age, is_cute, img_url) VALUES ('#{name}', '#{age}', '#{is_cute}, '#{img_url}')"
  redirect to '/kittens'
end

get '/kittens/:id' do
  "an individual kitty waiting to be adopted or whatever"
end

post '/kittens/:id' do
  "an individual kitty waiting to be adopted or whatever"
end