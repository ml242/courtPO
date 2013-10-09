require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

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

  db_conn = PG.connect( :dbname => 'cute_kittens_db',
  :host => 'localhost' )
  sql = "INSERT INTO kittens (name, age, is_cute, image) VALUES ('#{name}', #{age}, #{is_cute}, '#{image}')"
  db_conn.exec(sql)
  db_conn.close

  redirect to '/kittens'
end

get '/kittens' do
    db_conn = PG.connect( :dbname => 'cute_kittens_db',
    :host => 'localhost' )
    sql = "SELECT * FROM kittens"
    response = db_conn.exec(sql)
    @cats = response.entries
    db_conn.close
    erb :kittens

  # asks db for all the kittens SELECT *
  # returns array of hashes
  # where each hash represents properties of the kitten
end

get 'kittens/:id' do
  id = params[:id]
  db_conn = PG.connect( :dbname => 'cute_kittens_db',
  :host => 'localhost' )
  sql = "SELECT * FROM kittens WHERE id = #{id}"
    response = db_conn.exec(sql)
    @cats = response.entries
    db_conn.close
  #asks the db for a single kitten
  # returns a single hash representing a single kitten
  @cats
end

