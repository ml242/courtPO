require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'json'

get '/' do
  #nothing
end

post '/kittens' do
  name = params[:name]
  age = params[:age].to_i
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  db_connect = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}', #{age}, #{is_cute}, '#{image_url}')"
  db_connect.exec(sql)
  sql = "SELECT * FROM kittens ORDER BY id DESC LIMIT 1"
  results = db_connect.exec(sql)
  @kitten = results.entries
  kitten_string = ''
  @kitten[0].each do |x, y|
    kitten_string << "#{x} => #{y}, "
  end
  kitten_string
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
  sql = "SELECT * FROM kittens WHERE id = #{id}"
  results = db_connect.exec(sql)
  db_connect.close
  @kitten = results.entries
end
