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
  @photoarray = []
  @kittyarray = []
  response.entries.each do |entry|
    name = entry["name"]
    age = entry["age"]
    if entry["is_cute"] == "f"
      cute = "they are not cute"
    else
      cute = "they are cute"
    end
    @photoarray << entry["image_url"]
    kitten_string = "This kitten's name is #{name}, they are #{age} years old, and #{cute}."
    @kittyarray << kitten_string
  end
  db_conn.close
  erb :kittens
end

get '/kittens/delete_kitty' do
  erb :delete
end


post '/kittens/delete' do
  id = params[:id].to_i
  db_conn = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "DELETE FROM kittens WHERE id = #{id}"
  db_conn.exec(sql)
  db_conn.close
  redirect to '/kittens'
end

get '/kittens/:id' do
  id = params[:id].to_i
  db_conn = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "SELECT * FROM kittens WHERE id = #{id}"
  response = db_conn.exec(sql)
  @photoarray = []
  @kittyarray = []
  response.entries.each do |entry|
    name = entry["name"]
    age = entry["age"]
    if entry["is_cute"] == "f"
      cute = "they are not cute"
    else
      cute = "they are cute"
    end
    @photoarray << entry["image_url"]
    kitten_string = "This kitten's name is #{name}, they are #{age} years old, and #{cute}."
    @kittyarray << kitten_string
  end
  db_conn.close
  erb :kittens
end


