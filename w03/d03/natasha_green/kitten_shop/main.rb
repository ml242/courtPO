require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'kitten_shop_db', :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result
  end
end

get '/' do
  erb :index
end

get '/kittens' do
  #db_conn = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
  kittens = db_exec("SELECT * FROM kittens")
  @kittens = kittens.entries
  erb :kittens
end


get '/kittens/new'  do
  erb :new_kitten
end


post '/kittens/new' do
  name = params[:kitten]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  owner_name = params[:owner_name]
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}', '#{age}', '#{is_cute}', '#{image_url}', '#{owner_name}' )"
  db_exec(sql)
  redirect to '/kittens'
end

get '/kittens/:id' do
  id = params[:id]
  kittens = db_exec("SELECT * FROM kittens WHERE id = #{id}"  )
  @kittens = kittens.entries[0]
  erb :kitten_profile
end





