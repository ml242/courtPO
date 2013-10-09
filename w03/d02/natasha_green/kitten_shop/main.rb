require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'


get '/' do
  erb :index
end


get '/kittens' do
  db_conn = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
  sql = "SELECT * FROM kittens"
  kittens = db_conn.exec(sql)
  @kittens = kittens.entries

  db_conn.close
  #binding.pry
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

  db_conn = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}', #{age}, '#{is_cute}', '#{image_url}' )"
  db_conn.exec(sql)
  db_conn.close
  redirect to '/kittens'
end

=begin
POST /kittens
- Creates a new kitten in the database
- returns a hash representation of that kitten

GET /kittens
- Asks the database for all of the kittens
- returns an array of hashes where each hash represents the properties of the kitten

GET  /kittens/:id
- Asks the database for a single kitten
- returns a single hash representing a single kitten
=end





