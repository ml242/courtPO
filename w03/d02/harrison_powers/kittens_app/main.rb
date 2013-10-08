require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

get '/' do
  #nothing
end

post '/kittens' do
  db_connect = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "INSERT INTO kittens (name, age, is_cute, image) VALUES ('#{name}', #{age}, #{is_cute}, '#{image}')"
  db_connect.exec(sql)
  sql = "SELECT * FROM kittens WITH name = '#{name}', age = #{age}, is_cute = #{is_cute}, image = '#{image}'"
  results = db_connect.exec(sql)
  @kitten = results.entries
end

get '/kittens' do
  db_connect = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = 'SELECT * FROM kittens'
  results = db_connect.exec(sql)
  db_connect.close
  @kittens = results.entries
end

get '/kittens/:id' do
  id = params[:id]
  db_connect = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "SELECT * FROM kittens WITH id = #{id}"
  results = db_connect.exec(sql)
  db_connect.close
  @kitten = results.entries
end
