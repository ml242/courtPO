require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname=>'kitten_shop_db', :host => 'localhost')
    result = conn.exec sql
    conn.close
    result
  end
end

get '/' do
  sql = "SELECT * FROM owners"
  @owners = db_exec(sql)
  erb :index
end

get '/kittens' do
  sql = "SELECT * FROM kittens"
  @kittens = db_exec(sql)
  erb :all_kittens
end

post '/kittens' do
  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  owner_id = params[:owner_id]

  if is_cute == 'true'
    is_cute = 'true'
  else
    is_cute = 'false'
  end

  sql = "INSERT INTO kittens (name, age, is_cute, image_url, owner_id) VALUES ('#{name}', #{age}, #{is_cute}, '#{image_url}', '#{owner_id}')"
  db_exec(sql)
  redirect '/kittens'
end

get '/kittens/:id' do
  kitten_id = params[:id]
  sql = "SELECT * FROM kittens WHERE id = #{kitten_id}"
  @kitten = db_exec(sql)

  owner_id = @kitten.entries[0]['owner_id']
  sql = "SELECT * FROM owners WHERE id = #{owner_id}"
  owner = db_exec(sql)
  @owner = owner.entries[0]['name']

  sql = "SELECT * FROM owners"
  @owners = db_exec(sql)

  erb :individual_kitten
end

post '/kittens/:id' do
  kitten_id = params[:id]
  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  owner_id = params[:owner_id]

  db_connect = PG.connect(:dbname=> 'kitten_shop_db', :host=> 'localhost')

  unless params[:name].empty?
    sql = "UPDATE kittens SET name = '#{name}' WHERE id = #{kitten_id}"
    db_connect.exec(sql)
  end

  unless params[:age].empty?
    sql = "UPDATE kittens SET age = '#{age}' WHERE id = #{kitten_id}"
    db_connect.exec(sql)
  end

  unless params[:is_cute].nil?
    sql = "UPDATE kittens SET is_cute = '#{is_cute}' WHERE id = #{kitten_id}"
    db_connect.exec(sql)
  else
    sql = "UPDATE kittens SET is_cute = false WHERE id = #{kitten_id}"
    db_connect.exec(sql)
  end

  unless params[:image_url].empty?
    sql = "UPDATE kittens SET image_url = '#{image_url}' WHERE id = #{kitten_id}"
    db_connect.exec(sql)
  end

  sql = "UPDATE kittens SET owner_id = '#{owner_id}' WHERE id = #{kitten_id}"
  db_connect.exec(sql)

  db_connect.close

  redirect "/kittens/#{kitten_id}"
end

post '/kittens/:id/delete' do
  kitten_id = params[:id]
  sql = "DELETE FROM kittens WHERE id = #{kitten_id}"
  db_exec(sql)

  redirect '/kittens'
end

