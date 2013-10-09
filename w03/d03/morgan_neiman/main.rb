require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'kittens_db', :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result
  end
end

get '/kittens/new' do
  erb :make_kitten
end

post '/kittens' do
  name = params[:name]
  age = params[:age].to_i
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}', #{age}, #{is_cute}, '#{image_url}')"
  db_exec(sql)
  redirect to '/kittens'
end

get '/kittens' do
  sql = "SELECT * FROM kittens"
  response = db_exec(sql)
  @photoarray = []
  @kittyarray = []
  idarray = []
  ownerarray = []
  i = 0
  response.entries.each do |entry|
    name = entry["name"]
    age = entry["age"]
    if entry["is_cute"] == "f"
      cute = "they are not cute"
    else
      cute = "they are cute"
    end
    @photoarray << entry["image_url"]
    idarray << entry["owner_id"]
    # binding.pry
    id = idarray[i]
    sql = "SELECT * FROM owners WHERE id = #{id.to_i}"
    response = db_exec(sql)
    response.entries.each do |entry|
      name = entry["name"]
      ownerarray << name
    end
    kitten_string = "This kitten's name is #{name}, they are #{age} years old, #{cute}, and their owner is #{ownerarray[i]}."
    @kittyarray << kitten_string
    i += 1
  end

  erb :kittens
end

get '/kittens/delete_kitty' do
  erb :delete
end


post '/kittens/delete' do
  id = params[:id].to_i
  sql = "DELETE FROM kittens WHERE id = #{id}"
  db_exec(sql)
  redirect to '/kittens'
end

get '/kittens/:id' do
  id = params[:id].to_i
  sql = "SELECT * FROM kittens WHERE id = #{id}"
  response = db_exec(sql)
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
  erb :kittens
end


