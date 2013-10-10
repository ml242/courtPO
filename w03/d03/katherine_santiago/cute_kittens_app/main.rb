require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'cute_kittens_db', :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result
  end
end

get '/' do
  redirect to '/kittens/new'
end

get '/kittens/new' do
  # collects kitten info
  erb :new
end

post '/kittens' do
  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image = params[:image]

  sql = "INSERT INTO kittens (name, age, is_cute, image) VALUES ('#{name}', #{age}, #{is_cute}, '#{image}')"
  db_exec(sql)

  redirect to '/kittens'
end

get '/kittens' do
  sql = "SELECT * FROM kittens"
  result = db_exec(sql)
  @kittens = result.entries
  erb :kittens

  # returns array of hashes
  # where each hash represents properties of the kitten
end

# GET /kittens/1
get '/kittens/:id' do
  id = params[:id]

  sql = "SELECT * FROM kittens WHERE id = #{id}"
  result = db_exec(sql)
  @kitten = result[0]

  # asks the db for a single kitten
  # returns a single hash representing a single kitten
  erb :kittens_id
end

post '/kittens/delete/:id' do
  id = params[:id]
  sql = "DELETE FROM kittens WHERE id = #{id};"
  result = db_exec(sql)
  @kittens = result.entries

  redirect to '/kittens'
end

post 'owners/new' do
  owner_name = params[:name]

  sql = "INSERT INTO owners (name) VALUES (#{name})"
  db_exec(sql)

  redirect '/owners'
end

get 'owners' do
  sql = "SELECT * FROM owners"
  result = db_exec(sql)
  @owners = result.entries
  erb :owners
end





