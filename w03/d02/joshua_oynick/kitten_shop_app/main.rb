require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

post '/kittens' do
#creates a new kitten in the database

  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  binding.pry
 connection = PG.connect(:dbname=>"kittens_db", :host=>"localhost")
 sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}', '#{age}', '#{is_cute}', '#{image_url}')"
  connection.exec(sql)
  connection.close
#returns a hash representation of that kitten
params
end

get '/kittens' do
#asks the database for all of the kittens
#returns an array of hashes where each hash represents the properties of the kitten
connection = PG.connect(:dbname=>"kittens_db", :host=>"localhost")
  sql = "SELECT * FROM kittens"
  response = connection.exec(sql)
  @kittens = response.entries
  connection.close
  erb :kittens
end

get '/kittens/new' do
  erb :kitten_form
end


get '/kittens/:id' do
#asks the database for a single kitten
#returns a single hash representing a single kitten
end
