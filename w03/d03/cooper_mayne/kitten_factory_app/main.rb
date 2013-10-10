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

get '/kittens/new' do
  erb :new
end

post '/kittens' do
  name = params["name"]
  age = params["age"]
  is_cute = false
  is_cute = true if params["is_cute"]=="true"
  image_url = params["image_url"]
db_query("INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}',#{age},#{is_cute},'#{image_url}')")
  redirect '/kittens'
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
  #@kitten_info.to_s
  erb :display
end

get '/kittens/:id/update' do
  id = params[:id]
  kitten = db_query("SELECT * FROM kittens WHERE id=#{id}")
  @kitten_info = kitten.entries[0]
  erb :update
end

post '/kittens/:id' do
  id = params[:id]
  name = params["name"]
  age = params["age"]
  is_cute = false
  is_cute = true if params["is_cute"]=="true"
  image_url = params["image_url"]
  db_query("UPDATE kittens SET name = '#{name}', age = #{age}, is_cute = #{is_cute}, image_url = '#{image_url}' WHERE id=#{id}")
  redirect '/kittens/#{id}'
end
