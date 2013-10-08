require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

get '/kittens/new' do
  erb :make_kitten
end

post '/kittens' do
  name = params[:name]
  age = params[:age].to_i
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  db_conn = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}', #{age}, #{is_cute}, '#{image_url}')"
  db_conn.exec(sql)
  db_conn.close
  redirect to '/kittens'
end

get '/kittens' do
  db_conn = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "SELECT * FROM kittens"
  response = db_conn.exec(sql)
  response.entries.each do |entry|
    name = entry["name"]
    age = entry["age"]
    kitten_string = "This kitten's name is #{}, they are #{} old, "
  end
  db_conn.close
end

get '/kittens/:id' do
  id = params[:id]
  db_conn = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "SELECT * FROM kittens WHERE id = #{id}"
  response = db_conn.exec(sql)
  response.entries.to_s
  db_conn.close
end

