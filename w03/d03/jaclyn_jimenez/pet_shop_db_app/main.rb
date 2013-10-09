require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'pet_shop_db', :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result
  end
end

get '/' do
  erb :index
end

post '/kittens' do
  #{"name"=>"kitty", "age"=>"3", "img_url"=>"n/a", "is_cute"=>"true"}
  @name = params["name"]
  @age = params["age"]
  @img = params["img_url"]
  @cute = params["is_cute"]
  response = db_exec("INSERT INTO kitten (name, age, img_url, is_cute) VALUES ('#{@name}', '#{@age}', '#{@img}', '#{@cute}')")
  redirect to '/kittens'
end

get '/kittens' do
  kittens = db_exec("SELECT * FROM kitten")
  @kittens = kittens.entries
  erb :kittens
end

get '/new_kitten' do
  erb :new_kitten
end

get '/kittens/:id' do
   @id = params[:id]
  kitten = db_exec("SELECT * FROM kitten WHERE id = '#{@id}'")
  kitten = kitten.entries[0]
  @kitten = kitten
  erb :kitten_profile
end

post '/kittens/:id/update' do
   @id = params[:id]
    @name = params["name"]
    @age = params["age"]
    @img = params["img_url"]
    @cute = params["is_cute"]
  response = db_exec("UPDATE kitten SET name = '#{@name}' WHERE id = #{@id}")
  response = db_exec("UPDATE kitten SET age = #{@age} WHERE id = #{@id}")
  response = db_exec("UPDATE kitten SET img_url = '#{@img}' WHERE id = #{@id}")
  response = db_exec("UPDATE kitten SET is_cute = '#{@cute}' WHERE id = #{@id}")
  redirect to "/kittens/#{@id}"
end


get '/kittens/:id/update' do
  @id = params[:id]
  kitten = db_exec("SELECT name FROM kitten WHERE id = #{@id}")
  @kitten_before_update = kitten.entries
  erb :update
end

get '/new_owner' do
  # link to form to add owner name. form posts to /owners
  erb :new_owner
end

post '/owners' do
  @name = params["name"]
  response = db_exec("INSERT INTO owners (name) VALUES ('#{@name}')")
  redirect to '/owners'
end

get '/owners' do
  response = db_exec("SELECT * FROM owners")
  @owners = response.entries
  erb :owners
end





