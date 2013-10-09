require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'
require 'pry'
require 'pg'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'kitten_shop_db', :host => 'localhost')
    result = conn.exec sql
    conn.close
    result
  end
end

get '/' do
  sql = "SELECT * FROM owners"
  @owners = db_exec sql
  # binding.pry

  slim :index
end

get '/kittens' do
  sql = "SELECT * FROM kittens"
  @kittens = db_exec sql

  slim :all_kittens
end

post '/kittens' do
  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  owner_id = params[:owner_id]

  is_cute == 'true' ? is_cute = 'true' : is_cute = 'false'

  sql = "INSERT INTO kittens (name, age, is_cute, image_url, owner_id) VALUES ('#{name}', #{age}, #{is_cute}, '#{image_url}', '#{owner_id}')"
  db_exec sql

  redirect '/kittens'
end

get '/kittens/:id' do
  kitten_id = params[:id]
  sql = "SELECT * FROM kittens WHERE id = #{kitten_id}"
  @kitten = db_exec sql

  owner_id = @kitten.entries[0]['owner_id']
  sql = "SELECT * FROM owners WHERE id = #{owner_id}"
  owner = db_exec sql
  @owner = owner.entries[0]['name']

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
  sql = "DELETE FROM kittens WHERE id = #{kitten_id}"
  db_exec sql

  redirect '/kittens'
end

