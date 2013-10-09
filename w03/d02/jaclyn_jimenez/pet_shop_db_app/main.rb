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

get '/kittens/:id' do
   @id = params[:id]
    db_connect = PG.connect(
    :host => 'localhost',
    :dbname => 'pet_shop_db')
  sql = "SELECT * FROM kitten WHERE id = '#{@id}'"
  kitten = db_connect.exec(sql)
  kitten = kitten.entries[0]
  @kitten = kitten
  db_connect.close
  erb :kitten_profile
end

post '/kittens/:id/update' do
   @id = params[:id]
    @name = params["name"]
    @age = params["age"]
    @img = params["img_url"]
    @cute = params["is_cute"]
    db_connect = PG.connect(
    :host => 'localhost',
    :dbname => 'pet_shop_db')
  sql = "UPDATE kitten SET name = '#{@name}' WHERE id = #{@id}"
  kitten = db_connect.exec(sql)
  sql = "UPDATE kitten SET age = #{@age} WHERE id = #{@id}"
  kitten = db_connect.exec(sql)
  sql = "UPDATE kitten SET img_url = '#{@img}' WHERE id = #{@id}"
  kitten = db_connect.exec(sql)
  sql = "UPDATE kitten SET is_cute = '#{@cute}' WHERE id = #{@id}"
  kitten = db_connect.exec(sql)
  redirect to "/kittens/#{@id}"
end


get '/kittens/:id/update' do
  @id = params[:id]
  db_connect = PG.connect(
    :host => 'localhost',
    :dbname => 'pet_shop_db')
  sql = "SELECT name FROM kitten WHERE id = #{@id}"
  kitten = db_connect.exec(sql)
  @kitten_before_update = kitten.entries
  erb :update
end
