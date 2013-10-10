require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'kitten_shop_db', :host => 'localhost')
    #binding.pry
    result = conn.exec(sql)

    conn.close
    result
  end
end

get '/' do
  sql = "SELECT * FROM owners"
  @owners = db_exec(sql)
  #binding.pry
  erb :index
end

get '/kittens' do
  sql = "SELECT * FROM kittens"
  @kittens = db_exec(sql)
  erb :kittens
end

post '/kittens' do
  sql = "INSERT INTO kittens (name, age, is_cute, image_url, owner) VALUES (
    '#{params["name"]}',
    '#{params["age"]}',
    '#{params["is_cute"]}',
    '#{params["image_url"]}',
    '#{params["owner"]}'
    )"
  #binding.pry
  db_exec(sql)

  redirect to '/kittens'
end

get '/kittens/:id' do
  sql = "SELECT * FROM kittens WHERE id = #{params[:id]}"
  @kittens = db_exec(sql)
  erb :kittens
end

get '/kittens/:id/update' do
  sql = "SELECT * FROM kittens WHERE id = #{params[:id]}"
  @kitten = db_exec(sql)
  binding.pry
  erb :update
end

# - Removes a kitten from the database
# - returns `true` if it was able to remove the kitten
post '/kittens/:id' do
  sql = "UPDATE kittens WHERE SET id = #{params[:id]}"
  @kittens = db_exec(sql)
  redirect to '/kittens/:id'
end

# - takes any of the passed in parameters
# - updates only those parameters for a single kitten
post '/kittens/:id/delete' do
  sql = "DELETE FROM kittens WHERE id = #{params[:id]}"
  @kittens = db_exec(sql)
  erb :kittens
  redirect to '/kittens'
end





get '/owners' do
  sql = "SELECT * FROM owners"
  @owners = db_exec(sql)
  erb :owners
end

post '/owners' do
  sql = "INSERT INTO owners (name) VALUES (
    '#{params["name"]}')"
  db_exec(sql)
  redirect to '/owners'
end

post '/owners/:id/delete' do
  sql = "DELETE FROM owners WHERE id = #{params[:id]}"
  @owners = db_exec(sql)
  erb :owners
  redirect to '/owners'
end

