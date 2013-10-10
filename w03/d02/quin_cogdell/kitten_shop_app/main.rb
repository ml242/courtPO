require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

get '/' do
  erb :index
end

get '/kittens' do
  db_conn = PG.connect( :dbname => 'kitten_shop_db', :host => 'localhost')
  sql = "SELECT * FROM kittens"
  @kittens = db_conn.exec(sql)
  db_conn.close

  erb :kittens
end

post '/kittens' do
  db_conn = PG.connect( :dbname => 'kitten_shop_db', :host => 'localhost')
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES (
    '#{params["name"]}',
    '#{params["age"]}',
    '#{params["is_cute"]}',
    '#{params["image_url"]}'
    )"
  db_conn.exec(sql)
  db_conn.close
  redirect to '/kittens'
end


get '/kittens/:id' do
  db_conn = PG.connect( :dbname => 'kitten_shop_db', :host => 'localhost')
  sql = "SELECT * FROM kittens WHERE id = #{params[:id]}"
  @kittens = db_conn.exec(sql)
  db_conn.close
  erb :kittens
end


# EVERYTHING AFTER IS EXTRA CREDIT

# - Removes a kitten from the database
# - returns `true` if it was able to remove the kitten
post '/kittens/:id' do

  redirect to '/kittens'
end


# - takes any of the passed in parameters
# - updates only those parameters for a single kitten
post '/kittens/:id/delete' do
  db_conn = PG.connect( :dbname => 'kitten_shop_db', :host => 'localhost')
  sql = "DELETE FROM kittens WHERE id = #{params[:id]}"
  @kittens = db_conn.exec(sql)
  db_conn.close
  erb :kittens



  redirect to '/kittens'
end
