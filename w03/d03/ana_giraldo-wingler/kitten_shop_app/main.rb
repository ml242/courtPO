require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

def db_exec(sql)
  conn = PG.connect(:dbname =>'kitten_shop_db', :host => 'localhost')
  result = conn.exec(sql)
  conn.close
  result
end

get '/' do
  erb :index
end

get '/kittens/new' do
  response = db_exec("SELECT * FROM owners;")
  @owners = response.entries
  erb :add_kitten
end

post '/kittens' do
  name = params['name']
  age = params['age'].to_i
  is_cute = params['is_cute']
  owner_id = params['owner_id']
  img_url = params['img_url']
  db_exec("INSERT INTO kittens (name, age, is_cute, img_url, owner_id) VALUES ('#{name}', '#{age}', '#{is_cute}', '#{img_url}', '#{owner_id}');")
  redirect to ('/kittens')
end

get '/kittens' do
  response = db_exec("SELECT * FROM kittens;")
  @kitten_list = response.entries
  erb :kittens
end

get '/kittens/:id' do
  response = db_exec("SELECT * FROM kittens WHERE id = #{params[:id]};")
  kitten = response.entries[0]
  @id = kitten['id']
  @name = kitten['name']
  @age = kitten['age']
  @is_cute = kitten['is_cute']
  @img_url = kitten['img_url']
  owner_id = kitten['owner_id']
  response = db_exec("SELECT name FROM owners WHERE id = #{owner_id};")
  @owner = response.entries[0]['name']
  erb :kitten_page
end

post '/kittens/:id' do
  name = params['name']
  age = params['age'].to_i
  is_cute = params['is_cute']
  img_url = params['img_url']
  db_exec("UPDATE kittens SET name = '#{name}', age = '#{age}', is_cute = '#{is_cute}', img_url = '#{img_url}' WHERE id = #{params[:id]};")
  redirect to ('/kittens')
end

post '/kittens/:id/delete' do
  db_exec("DELETE FROM kittens WHERE id = #{params[:id]};")
  redirect to ('/kittens')
end

get '/kittens/:id/update' do
  response = db_exec("SELECT * FROM kittens WHERE id = #{params[:id]}")
  kitten = response.entries
  @id = kitten[0]['id']
  @name = kitten[0]['name']
  @age = kitten[0]['age']
  @is_cute = kitten[0]['is_cute']
  @img_url = kitten[0]['img_url']
  response = db_exec("SELECT * FROM owners;")
  @owners = response.entries
  erb :update_kitten
end

post '/owners' do
  name = params[:name]
  db_exec("INSERT INTO owners (name) VALUES ('#{name}');")
  redirect to ('/')
end

get '/owners' do
  erb :add_owner
end
