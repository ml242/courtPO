require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'
require 'pry'
require 'pg'


get '/' do
  slim :index
end

get '/kittens' do
  db_connec = PG.connect :dbname => 'kitten_shop_db', :host => 'localhost'
  sql = "SELECT * FROM kittens"
  @kittens = db_connec.exec sql
  db_connec.close

  slim :all_kittens
end

post '/kittens' do
  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]

  is_cute == 'true' ? is_cute = 'true' : is_cute = 'false'

  db_connec = PG.connect :dbname => 'kitten_shop_db', :host => 'localhost'
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}', #{age}, #{is_cute}, '#{image_url}')"
  db_connec.exec sql
  db_connec.close

  redirect '/kittens'
end

get '/kittens/:id' do
  kitten_id = params[:id]
  db_connec = PG.connect :dbname => 'kitten_shop_db', :host => 'localhost'
  sql = "SELECT * FROM kittens WHERE id = #{kitten_id}"
  @kitten = db_connec.exec sql
  db_connec.close

  slim :single_kitten
end

post '/kittens/:id' do
  kitten_id = params[:id]
  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]

  db_connec = PG.connect :dbname => 'kitten_shop_db', :host => 'localhost'

  unless params[:name].nil?
    sql = "UPDATE kittens SET name = '#{name}' WHERE id = #{kitten_id}"
    db_connec.exec sql
  end
  unless params[:age].nil?
    sql = "UPDATE kittens SET age = #{age} WHERE id = #{kitten_id}"
    db_connec.exec sql
  end
  unless params[:is_cute].nil?
    sql = "UPDATE kittens SET is_cute = #{is_cute} WHERE id = #{kitten_id}"
    db_connec.exec sql
  end
  unless params[:image_url].nil?
    sql = "UPDATE kittens SET image_url = '#{image_url}' WHERE id = #{kitten_id}"
    db_connec.exec sql
  end

  db_connec.close
end

post '/kittens/:id/delete' do
  kitten_id = params[:id]
  db_connec = PG.connect :dbname => 'kitten_shop_db', :host => 'localhost'
  sql = "DELETE FROM kittens WHERE id = #{kitten_id}"
  db_connec.exec sql
  db_connec.close

  redirect '/kittens'
end

