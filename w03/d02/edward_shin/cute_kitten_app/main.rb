require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

get '/' do
  #name, age, description, is_cute
  erb :index
end

get '/kittens' do
#asks database for all kittens
db_conn = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
sql = "SELECT * FROM kittens"
response = db_conn.exec(sql)
@kittens_array = response.entries
db_conn.close
erb :kittens
end

post '/kittens' do
  name = params[:name]
  age = params[:age]
  description = params[:description]
  db_conn = PG.connect(:dbname => 'kittens_db', :host =>'localhost')
  sql2 = "INSERT INTO kittens (name, age, description) VALUES ('#{name}', #{age}, '#{description}')"
 db_conn.exec(sql2)
 db_conn.close
redirect to ('/kittens')
end

get '/kittens/:id' do
  id = params[:id]
  db_conn = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
  sql3 = "SELECT * FROM kittens WHERE id = #{id}"
  kitten = db_conn.exec(sql3)
  @kitten_hash = kitten.entries
  db_conn.close
  erb :kitten
end

post '/kittens/:id/delete' do
delete_id = params[:name]
db_conn = PG.connect(:dbname => 'kittens_db', :host => 'localhost')
sql4 = "DELETE FROM kittens WHERE name = '#{delete_id}'"
remove_kitten = db_conn.exec(sql4)
@removed_kitten = remove_kitten.entries
db_conn.close
erb :removed
end
=begin
post '/kittens/:id' do
#take any of the passed in parameters
#updates only those parameters for a single kitten
end
=end