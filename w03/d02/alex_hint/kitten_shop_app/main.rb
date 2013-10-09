require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'


get '/' do
  erb :main
end

get '/kittens/new' do
  erb :kittens_new
end

get '/kittens' do
  #get info from database

  db_conn = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "SELECT * FROM kittens"
  response = db_conn.exec(sql)
  @response_entries = response.entries
  db_conn.close
  erb :kittens
end

post '/kittens' do
  #ship info to database
  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]


  db_conn = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}', #{age}, #{is_cute}, '#{image_url}')"
  db_conn.exec(sql)
  db_conn.close

  redirect to('/kittens')
end

get '/kitten/:id' do
  #get the ID of the kitten
  kitten_id = params[:id]

  db_conn = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "SELECT * FROM kittens WHERE id = #{kitten_id}"
  response = db_conn.exec(sql)
  @response_entry = response.entries[0]
  db_conn.close

  p @response_entry
  erb :kittens_id
end

post '/kitten/delete/:id' do
  id = params[:name] #will unlock the id number inside from @response_entry
   db_conn = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "DELETE FROM kittens WHERE id = #{id}"
  db_conn.exec(sql)
  db_conn.close

  redirect to('/kittens')
end


# post '/kitten/update/:id' do

#   erb :kittens
# end




