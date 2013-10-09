require "PG"
require "pry"
require "sinatra"
require "sinatra/reloader"

get "/kittens/new" do
  erb :new
end

post "/kittens" do
  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  db_conn = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
  sql = "INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('#{name}', #{age}, #{is_cute}, '#{image_url}');"
  db_conn.exec(sql)
  redirect to "/kittens"
end

get "/kittens" do
  db_conn = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
  sql = "SELECT * FROM kittens;"
  response = db_conn.exec(sql)
  db_conn.close
  @kittens = response.entries
  erb :kittens
end

get  "/kittens/:id" do
  id = params[:id]
  db_conn = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
  sql = "SELECT * FROM kittens WHERE id = '#{id}';"
  response = db_conn.exec(sql)
  db_conn.close
  @kittens = response.entries
  erb :kittens
end
