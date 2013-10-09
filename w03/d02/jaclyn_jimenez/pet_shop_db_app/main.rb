require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

get '/' do
  erb :index
end

post '/kittens' do
  #{"name"=>"kitty", "age"=>"3", "img_url"=>"n/a", "is_cute"=>"true"}
  @name = params["name"]
  @age = params["age"]
  @img = params["img_url"]
  @cute = params["is_cute"]
  db_connect = PG.connect(
    :host => 'localhost',
    :dbname => 'pet_shop_db')
  sql = "INSERT INTO kitten (name, age, img_url, is_cute) VALUES ('#{@name}', '#{@age}', '#{@img}', '#{@cute}')"
  response = db_connect.exec(sql)
  db_connect.close
  redirect to '/kittens'
end

get '/kittens' do
  db_connect = PG.connect(
    :host => 'localhost',
    :dbname => 'pet_shop_db')
  sql = "SELECT * FROM kitten"
  kittens = db_connect.exec(sql)
  @kittens = kittens.entries
  db_connect.close
  erb :kittens
end

get '/new_kitten' do
  erb :new_kitten
end
