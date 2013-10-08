require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

get '/' do
end

post '/kittens' do
  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]

  db_connec = PG.connect :dbname => 'kitten_shop_db', :host => 'localhost'
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}', #{age}, #{is_cute}, '#{image_url}')"
  db_connec.exec sql
  db_connec.close

  redirect '/kittens'
end

get '/kittens' do
  db_connec = PG.connect :dbname => 'kitten_shop_db', :host => 'localhost'
  sql = "SELECT * FROM kittens"
  kittens = db_connec.exec sql
  db_connec.close
  kittens.entries.to_s
end

get '/kittens/:id' do

end
