require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'kittens_db', :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result
  end
end

get '/' do
  erb :index
end

get '/owners' do
sql5 = "SELECT * FROM owners"
result = db_exec(sql5)
@owners = result.entries
  erb :owners
end

post '/owners' do
  name = params[:name]
  sql6 = "INSERT INTO owners (name) VALUES ('#{name}')"
  result = db_exec(sql6)
  binding.pry
  redirect to ('/owners')
end

get '/kittens' do
  sql = "SELECT * FROM kittens"
  result = db_exec(sql)
  @kittens_array = result.entries
  erb :kittens
end

post '/kittens' do
  name = params[:name]
  age = params[:age]
  description = params[:description]
  owner = params[:owner]
  sql2 = "INSERT INTO kittens (name, age, owner, description) VALUES ('#{name}', #{age}, '#{owner}', '#{description}')"
  result = db_exec(sql2)
  redirect to ('/kittens')
end

get '/kittens/:id' do
  id = params[:id]
  sql3 = "SELECT * FROM kittens WHERE id = #{id}"
  kitten = db_exec(sql3)
  @kitten_hash = kitten.entries
  erb :kitten
end

get '/kittens/:id/delete' do
  id_remove = params[:id]
  sql4 = "DELETE FROM kittens WHERE id = #{id_remove}"
  result = db_exec(sql4)
  sql = "SELECT * FROM kittens"
  result = db_exec(sql)
  new_kittens_array = result.entries
  id_array=Array.new
  new_kittens_array.each do |hash|
    id_array << hash["id"]
  end
  if id_array.include?(id_remove) == false
    @message = "Your kitten has been removed!"
  end
  erb :removed
end
