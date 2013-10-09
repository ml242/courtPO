require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

get '/' do
  erb :index
end

# #read
get '/kittens' do
  @id = params[:id].to_i
  db_conn = PG.connect(:dbname => 'kitten_db',
  :host =>'localhost')
  if @id > 0
    sql = "SELECT * FROM kittens WHERE id = #{@id}"
  else
    sql = "SELECT * FROM kittens"
  end
  response = db_conn.exec(sql)
  kittens = response.entries
  @list = []
  kittens.each do
    |kitten|
    @kitten_group= {}
    @kitten_group[:ID] = kitten["id"]
    @kitten_group[:Name] = kitten["name"].capitalize
    @kitten_group[:Age] = kitten["age"]
    @kitten_group[:Cute] = kitten["is_cute"]
    @kitten_group[:Image_url] = kitten["image_url"]
    @list  << @kitten_group
    end
    db_conn.close
    erb :get_kittens
end

#post creations
post '/kittens' do
  name = params[:new_name]
  age = params[:new_age]
  is_cute = params[:new_cute]
  image = params[:new_image]
  db_conn = PG.connect(:dbname => 'kitten_db',
   :host =>'localhost')
  sql = "INSERT INTO kittens(name, age, is_cute, image_url)
  VALUES('#{name}',#{age},#{is_cute},'#{image}')"
  response = db_conn.exec(sql)
  sql = "SELECT * FROM kittens WHERE name = '#{name}'"
  response = db_conn.exec(sql)
  kittens = response.entries
  db_conn.close
  @kittens = response.entries.to_s
  erb :created_kitten_post
end

#create
get '/kittens/add' do
erb :create_kittens
# "What is the name of the new kitten?"
# name = gets.chomp
# "What is the age of the new kitten"
# age = gets.chomp
# "Is the kitten cute? True or false"
# is_cute = gets.chomp
# Paste image below
# image_url = gets.chomp

# ""
# number = gets.chomp
# SQL = "INSERT INTO kittens(name,age,is_cute,image_url)
# VALUES('name',age,'is_cute','image_url')"
end

#delete
get '/kittens/delete' do
db_conn = PG.connect(:dbname => 'kitten_db',
   :host =>'localhost')
  sql = "SELECT * FROM kittens"
  response = db_conn.exec(sql)
  kittens = response.entries
  @list = []
  kittens.each do
    |kitten|
    @kitten_group= {}
    @kitten_group[:ID] = kitten["id"]
    @kitten_group[:Name] = kitten["name"].capitalize
    @kitten_group[:Age] = kitten["age"]
    @kitten_group[:Cute] = kitten["is_cute"]
    @kitten_group[:Image_url] = kitten["image_url"]
    @list  << @kitten_group
  end
  db_conn.close
  erb :delete_kittens
# display list of kittens
# "Which kitten do you want to delete enter id"
# number = gets.chomp
# SQL = "DELETE FROM kittens WHERE id = '#{number}'"
end

post '/kittens/delete' do
  @id = params[:delete_id]
  db_conn = PG.connect(:dbname => 'kitten_db',
    :host => 'localhost')
  sql = "DELETE FROM kittens WHERE id = #{@id}"
  deleted_kitten = db_conn.exec(sql)
  db_conn.close
  erb :delete_kittens_post
end
#update
get '/kittens/update' do
  db_conn = PG.connect(:dbname => 'kitten_db',
   :host =>'localhost')
  sql = "SELECT * FROM kittens"
  response = db_conn.exec(sql)
  kittens = response.entries
  @list = []
  kittens.each do
    |kitten|
    @kitten_group= {}
    @kitten_group[:ID] = kitten["id"]
    @kitten_group[:Name] = kitten["name"].capitalize
    @kitten_group[:Age] = kitten["age"]
    @kitten_group[:Cute] = kitten["is_cute"]
    @kitten_group[:Image_url] = kitten["image_url"]
    @list  << @kitten_group
  end
  db_conn.close

  erb :update_kittens
# display list of kittens
# which kitten do you want to modify? enter id
# number = gets.chomp
# "What do you want to update?"
# (name,age,is_cute,image_url)
# factor = gets.chomp
# "what do you want to change it to?"
# answer = gets.chomp
#   db_conn = PG.connect(:dbname => 'kitten_db',
#    :host =>'localhost')
#   sql = "UPDATE kittens SET '#{factor}' to '#{answer}' WHERE ID = '#{number}'"
#   response = db_conn.exec(sql)
#   kittens = response.entries
#   p kittens.to_s
end

post "/kittens/update" do
  @id = params[:update_id]
  @factor = params[:factor]
  @name = params[:update_name]
  @age = params[:update_age]
  @cute = params[:update_cute]
  @image = params[:update_image]
  db_conn = PG.connect(:dbname=>'kitten_db',
    :host => 'localhost')
    case
      when @factor == "age"
      sql = "UPDATE kittens SET #{@factor} = #{@age}
      WHERE id = #{@id}"
      when @factor == "is_cute"
      sql = "UPDATE kittens SET #{@factor} = #{@cute}
      WHERE id = #{@id}"
      when @factor == "name"
      sql = "UPDATE kittens SET #{@factor} = '#{@name}'
      WHERE id = #{@id}"
      when @factor == "image_url"
      sql = "UPDATE kittens SET #{@factor} = '#{@image}'
      WHERE id = #{@id}"
    end
  updates = db_conn.exec(sql)
  erb :update_kittens_post
end
