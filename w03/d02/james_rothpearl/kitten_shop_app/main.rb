require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

get '/kittens' do
  db_connection = PG.connect(
  :dbname => 'kittens_db',
  :host => 'localhost')

  sql = "SELECT * FROM kittens"

  response = db_connection.exec(sql)

  @kitten_list = response.entries

  db_connection.close

  erb :kittens
end

get '/' do
  erb :index
end

get '/kittens/new' do
  #to do: finish form, set up redirect after user completes form

  db_connection = PG.connect(
  :dbname => 'kittens_db',
  :host => 'localhost')

  sql = "INSERT INTO kittens (name, is_cute) VALUES ('#{name}', '#{is_cute}')"  #starting with easy values first for my form
  erb :create_kitten
end

get '/kittens/:id' do
  #asks database for a single kitten
  #returns a single hash representing a single kitten
  "Not sure yet about this"
end
