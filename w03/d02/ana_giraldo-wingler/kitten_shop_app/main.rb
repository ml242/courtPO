require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

get '/' do
  erb :index
end

get '/kittens/new' do
  erb :add_kitten
end

post '/kittens' do
  name = params['name']
  age = params['age'].to_i
  is_cute = params['is_cute']
  img_url = params['img_url']
  db_conn = PG.connect(
    :dbname => 'kitten_shop_db',
    :host => 'localhost')
  sql = "INSERT INTO kittens (name, age, is_cute, img_url) VALUES ('#{name}', '#{age}', '#{is_cute}', '#{img_url}');"
  db_conn.exec(sql)
  db_conn.close
  redirect to ('/kittens')
end

get '/kittens' do
  db_conn = PG.connect(
    :dbname => 'kitten_shop_db',
    :host => 'localhost')
  sql = "SELECT * FROM kittens;"
  response = db_conn.exec(sql)
  db_conn.close
  @kitten_list = response.entries
  erb :kittens
end

get '/kittens/:id' do
  db_conn = PG.connect(
    :dbname => 'kitten_shop_db',
    :host => 'localhost')
  sql = "SELECT * FROM kittens WHERE id = #{params[:id]};"
  response = db_conn.exec(sql)
  db_conn.close
  kitten = response.entries
  @id = kitten[0]['id']
  @name = kitten[0]['name']
  @age = kitten[0]['age']
  @is_cute = kitten[0]['is_cute']
  @img_url = kitten[0]['img_url']
  erb :kitten_page
end

post '/kittens/:id' do
  db_conn = PG.connect(
    :dbname => 'kitten_shop_db',
    :host => 'localhost')
  sql = "UPDATE kittens SET #{params}"
  db_conn.close
  redirect to ('get/kittens/:id')
end

post '/kittens/:id/delete' do
  db_conn = PG.connect(
    :dbname => 'kitten_shop_db',
    :host => 'localhost')
  sql = "DELETE FROM kittens WHERE id = #{params[:id]};"
  db_conn.exec(sql)
  db_conn.close
  redirect to ('/kittens')
end
