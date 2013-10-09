require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

require_relative 'kittens'

get '/' do
  erb :index
end

get '/add_kitten' do
  erb :add_kitten
end

post '/kittens' do
  # Creates a new kitten in the database
  # returns a hash representation of that kitten
  new_kitten = params
  # this was the test hash
      # new_kitten = {:name => "marge", :age => 3, :is_cute => true, :image_url => "http://placekitten.com/300"}
  # puts kitten into database
  db_connect = PG.connect(:dbname => 'animals_db', :host => 'localhost')
    # sql query with symbols
        #  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{new_kitten[name]}', #{new_kitten[:age]}, #{new_kitten[:is_cute]}, '#{new_kitten[:url]}')"
    # original sql query
        # sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('Chelsea', 3, true, 'http://placekitten.com/300')"
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{new_kitten["name"]}', #{new_kitten["age"]}, '#{new_kitten["is_cute"]}', '#{new_kitten["image_url"]}')"
  result = db_connect.exec(sql)
  db_connect.close
  redirect to ('/kittens')
end

get '/kittens' do
  # listing of all kittens in database
  db_connect = PG.connect(:dbname => 'animals_db', :host => 'localhost')
  sql = "SELECT * FROM kittens ORDER BY id"
  # sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('Chelsea', 3, true, 'http://placekitten.com/300')"
  records = db_connect.exec(sql)
  @records = records.entries
  db_connect.close
  erb :kittens
end

get '/kittens/:id' do
  kitten_id = params["id"].to_i
  db_connect = PG.connect(:dbname => 'animals_db', :host => 'localhost')
  sql = "SELECT * FROM kittens WHERE id = #{kitten_id} ORDER BY id"
  # sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('Chelsea', 3, true, 'http://placekitten.com/300')"
  records = db_connect.exec(sql)
  @records = records.entries
  db_connect.close
  erb :kittens
end

get '/kitten/find' do
  erb :find_kitten
end




#OPTIONAL--------------------------------------------------------
# post '/kittens/:id/delete' do
#   " /kittens/:id/delete POST route"
# end

# post '/kittens/:id' do
#   "/kittens/:id POST route"
# end



