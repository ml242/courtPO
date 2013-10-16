require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'petshop_db', :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result
  end
end

get '/' do
 erb :index
end

get '/kittens/new' do
  erb :new_kitten
end

post '/kittens' do
  name = params['name']
  age = params['age']
  is_cute = params['is_cute']
  image_url = params['image_url']
  db_exec("INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}', '#{age}', '#{is_cute}', '#{image_url}')")
  redirect to '/kittens'
end


get '/kittens' do
  kittens = db_exec("SELECT * FROM kittens")
  @kittens = kittens.entries
  erb :kittens
end


# GET  /kittens/:id
# - Asks the database for a single kitten
# - returns a single hash representing a single kitten

get '/kittens/:id' do
  kitten = db_exec("SELECT * FROM kittens WHERE id = #{params[:id]}")
  @kittens = kitten.entries
  @id = kitten[0]['id']
  @name = kitten[0]['name']
  @age = kitten[0]['age']
  @is_cute = kitten[0]['is_cute']
  @image_url = kitten[0]['image_url']
  erb :kitten_page
end


# #  EXTRAS


post '/kittens/:id' do
  db_exec("UPDATE kittens SET #{params}")
  redirect to ('get/kittens/:id')
end

post '/kittens/:id/delete' do
  db_conn = PG.connect(:dbname => 'petshop_db', :host => 'localhost')
  sql = "DELETE FROM kittens WHERE id = #{params[:id]};"
  db_conn.exec(sql)
  db_conn.close
  redirect to ('/kittens')
end