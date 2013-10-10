require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'kittens_db', :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result
  end
end

get '/' do
  erb :main
end

get '/owner' do
  erb :owner_new
end

post '/owner' do
  #"g", "d"
  name = params[:name]
  sql = "INSERT INTO owner (name) VALUES ('#{name}')"
  db_exec(sql)

  redirect to('/')
end

get '/kittens/new' do
  sql = "SELECT * FROM owner"
  response = db_exec(sql)
  @response_entries = response.entries
  erb :kittens_new
end

get '/kittens' do
  #get info from database
  sql = "SELECT * FROM kittens"
  response = db_exec(sql)
  @response_entries = response.entries
  erb :kittens
end

post '/kittens' do
  #ship info to database
  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  foreign_key = params[:foreign_key]

  sql = "INSERT INTO kittens (name, age, is_cute, image_url, owner_id) VALUES ('#{name}', #{age}, #{is_cute}, '#{image_url}', #{foreign_key})"
  db_exec(sql)

  redirect to('/kittens')
end

get '/kitten/:id' do
  #get the ID of the kitten
  kitten_id = params[:id]

  sql = "SELECT * FROM kittens WHERE id = #{kitten_id}"
  response = db_exec(sql)
  @response_entry = response.entries[0]

  owner_id = @response_entry["owner_id"] ####

  sql = "SELECT * FROM owner WHERE id = #{owner_id}"
  response_owner = db_exec(sql)

  @response_owner_entries = response_owner.entries

  erb :kittens_id
end

post '/kitten/delete/:id' do
  id = params[:id] #will unlock the id number inside from @response_entry
  sql = "DELETE FROM kittens WHERE id = #{id}"
  db_exec(sql)
  redirect to('/kittens')
end


# post '/kitten/update/:id' do

#   erb :kittens
# end




