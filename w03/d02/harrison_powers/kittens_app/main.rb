require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'json'

get '/' do
  redirect to('/kittens')
end

post '/kittens' do
  name = params[:name]
  age = params[:age].to_i
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  db_connect = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}', #{age}, #{is_cute}, '#{image_url}')"
  db_connect.exec(sql)
  sql = "SELECT * FROM kittens ORDER BY id DESC LIMIT 1"
  results = db_connect.exec(sql)
  @kitten = results.entries[0]
  erb :kittens_add
end

get '/kittens' do
  db_connect = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = 'SELECT * FROM kittens'
  results = db_connect.exec(sql)
  db_connect.close
  @kittens = results.entries
  erb :kittens_list
end

get '/kittens/edit/:id' do
  id = params[:id]
  db_connect = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "SELECT * FROM kittens WHERE id = #{id}"
  results = db_connect.exec(sql)
  db_connect.close
  @kitten = results.entries[0]
  erb :kitten_edit
end

post '/kittens/edit/:id' do
  id = params[:id]
  name = params[:name]
  age = params[:age].to_i
  case params[:is_cute]
  when "f"
    is_cute = false
  when "false"
    is_cute = false
  when "t"
    is_cute = true
  when "true"
    is_cute = true
  end
  image_url = params[:image_url]
  db_connect = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "UPDATE kittens SET name = '#{name}', age = #{age}, is_cute = #{is_cute}, image_url = '#{image_url}' WHERE id = #{id}"
  db_connect.exec(sql)
  db_connect.close
  redirect to("/kittens/#{id}")
end

get '/kittens/:id' do
  id = params[:id]
  db_connect = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "SELECT * FROM kittens WHERE id = #{id}"
  results = db_connect.exec(sql)
  db_connect.close
  @kitten = results.entries[0]
  erb :kitten_profile
end
