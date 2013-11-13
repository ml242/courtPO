require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'json'
require 'slim'


helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'kittens_db', :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result
  end
end

get '/' do
  redirect to('/kittens')
end

post '/kittens' do
  name = params[:name]
  age = params[:age].to_i
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  owner = params[:owner]
  sql = "INSERT INTO kittens (name, age, is_cute, image_url, owner) VALUES ('#{name}', #{age}, #{is_cute}, '#{image_url}', '#{owner}')"
  db_exec(sql)
  sql = "SELECT * FROM kittens ORDER BY id DESC LIMIT 1"
  results = db_exec(sql)
  @kitten = results.entries[0]
  slim :kittens_add
end

get '/kittens' do
  sql = 'SELECT * FROM kittens'
  results = db_exec(sql)
  @kittens = results.entries
  slim :kittens_list
end

get '/kittens/create' do
  sql = "SELECT * FROM owners"
  results = db_exec(sql)
  @owners = results.entries
  slim :kittens_create
end

get '/kittens/edit/:id' do
  id = params[:id]
  sql = "SELECT * FROM kittens WHERE id = #{id}"
  results = db_exec(sql)
  @kitten = results.entries[0]
  @title = "#{@kitten['name']}"
  sql = "SELECT * FROM owners"
  results = db_exec(sql)
  @owners = results.entries
  slim :kitten_edit
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
  owner = params[:owner]
  sql = "UPDATE kittens SET name = '#{name}', age = #{age}, is_cute = #{is_cute}, image_url = '#{image_url}', owner = '#{owner}' WHERE id = #{id}"
  db_exec(sql)
  redirect to("/kittens/#{id}")
end

get '/kittens/:id' do
  id = params[:id]
  sql = "SELECT * FROM kittens WHERE id = #{id}"
  results = db_exec(sql)
  @kitten = results.entries[0]
  slim :kitten_profile
end

get '/owners/create' do
  slim :owners_create
end

post '/owners/add' do
  name = params[:name]
  sql = "INSERT INTO owners (name) VALUES ('#{name}')"
  db_exec(sql)
  redirect to('/kittens')
end
