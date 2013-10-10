require "PG"
require "pry"
require "sinatra"
require "sinatra/reloader"

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname =>'kitten_shop_db', :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result
  end
end
post "/kittens/new" do
  db_exec("INSERT INTO owners (name) VALUES ('#{params[:name]}');")
  redirect to "/kittens/new"
end

get "/kittens/new" do
  owners_r = db_exec("SELECT * FROM owners;")
  @owners = owners_r.entries
  erb :new
end

post "/kittens" do
  name = params[:name]
  age = params[:age]
  is_cute = params[:is_cute]
  image_url = params[:image_url]
  owner_id = params[:owner]
  db_exec("INSERT INTO kittens (name, age, is_cute, image_url, owner_id) VALUES ('#{name}', #{age}, #{is_cute}, '#{image_url}', #{owner_id});")
  redirect to "/kittens"
end

get "/kittens" do
  response = db_exec("SELECT * FROM kittens;")
  @kittens = response.entries
  owners = db_exec("SELECT * FROM owners").entries
  @owner_hsh = {}
  owners.each do |owner|
    @owner_hsh[owner['id']] = owner['name']
  end
  erb :kittens
end

get  "/kittens/:id" do
  id = params[:id]
  response = db_exec("SELECT * FROM kittens WHERE id = '#{id}';")
  @kittens = response.entries
  owners = db_exec("SELECT * FROM owners").entries
  @owner_hsh = {}
  owners.each do |owner|
    @owner_hsh[owner['id']] = owner['name']
  end
  erb :kittens
end
