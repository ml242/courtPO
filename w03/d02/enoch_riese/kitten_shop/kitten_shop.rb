require "PG"
require "pry"
require "sinatra"
require "sinatra/reloader"

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

# - Creates a new kitten in the database
# - returns a hash representation of that kitten

get "/kittens" do
   db_conn = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
   sql = "SELECT * FROM kittens;"
   response = db_conn.exec(sql)
   db_conn.close
   response.entries.to_s
 end
# - Asks the database for all of the kittens
# - returns an array of hashes where each hash represents the properties of the kitten

get  "/kittens/:id" do
  id = params[:id]
  db_conn = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
   sql = "SELECT * FROM kittens WHERE id = '#{id}';"
   response = db_conn.exec(sql)
   db_conn.close
   response.entries.to_s
 end
# - Asks the database for a single kitten
# - returns a single hash representing a single kitten

# # EVERYTHING AFTER IS EXTRA CREDIT

# POST /kittens/:id/delete
# - Removes a kitten from the database
# - returns `true` if it was able to remove the kitten

# POST /kittens/:id
# - takes any of the passed in parameters
# - updates only those parameters for a single kitten
