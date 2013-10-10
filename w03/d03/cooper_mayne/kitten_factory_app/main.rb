require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

def db_query(sql)
  db_conn = PG.connect(:dbname => 'kitten_factory_db',
                       :host => 'localhost',
                       :user => 'postgres',
                       :password => 'home3232'
                      )
  res = db_conn.exec(sql)
  db_conn.close
  res
end

get '/' do
  erb :index
end

get '/kittens' do
  kittens = db_query("SELECT * FROM kittens")
  @kittens = kittens.entries
  erb :kittens
end

get '/owners' do
  owners = db_query("SELECT * FROM owners")
  @owners = owners.entries
  erb :owners
end

get '/kittens/new' do
  res = db_query("SELECT * FROM owners")
  @owners = res.entries
  erb :new
end

get '/owners/new' do
  erb :new_owner
end

post '/kittens' do
  name = params["name"]
  age = params["age"]
  owner_id = params["owner_id"]
  is_cute = false
  is_cute = true if params["is_cute"]=="true"
  image_url = params["image_url"]
  db_query("INSERT INTO kittens (name, age, is_cute, image_url, owner_id) VALUES ('#{name}',#{age},#{is_cute},'#{image_url}', #{owner_id})")
  redirect '/kittens'
end

post '/owners' do
  name = params["name"]
  db_query("INSERT INTO owners (name) VALUES ('#{name}')")
  redirect '/owners'
end

post '/kittens/:id/delete' do
  id = params["id"]
  db_query("DELETE FROM kittens WHERE id = #{id}")
  redirect '/kittens'
end

get '/kittens/:id' do
  id = params[:id]
  info = db_query("SELECT * FROM kittens WHERE id = #{id}")
  @kitten_info = info.entries[0]
  @owner = db_query("SELECT name FROM owners WHERE id = #{@kitten_info['owner_id']}")[0]["name"]
  erb :display
end

get '/owners/:id' do
  id = params[:id]
  info = db_query("SELECT * FROM owners WHERE id = #{id}")
  @owner_info = info.entries[0]
  res = db_query("SELECT * FROM kittens WHERE owner_id = #{id}")
  @pets = res.entries
  erb :display_owner
end

get '/kittens/:id/update' do
  id = params[:id]
  kitten = db_query("SELECT * FROM kittens WHERE id=#{id}")
  @kitten_info = kitten.entries[0]
  res = db_query("SELECT * FROM owners")
  @owners = res.entries
  erb :update
end

post '/kittens/:id' do
  id = params[:id]
  name = params["name"]
  age = params["age"]
  owner_id = params['owner_id']
  is_cute = false
  is_cute = true if params["is_cute"]=="true"
  image_url = params["image_url"]
  db_query("UPDATE kittens SET owner_id = '#{owner_id}',name = '#{name}', age = #{age}, is_cute = #{is_cute}, image_url = '#{image_url}' WHERE id=#{id}")
  redirect "/kittens/#{id}"
end
