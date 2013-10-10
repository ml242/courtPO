require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

helpers do
  def db_exec(sql)
    conn = PG.connect(:dbname => 'kitten_db',
      :host => 'localhost')
    result = conn.exec(sql)
    conn.close
    result
  end
end

get '/' do
  erb :index
end

get '/owner' do
  erb :add_owners
end

post '/owner' do
  @name = params[:add_owner]
  sql = "INSERT INTO owners(name)
  VALUES('#{@name}')"
  db_exec(sql)
  "You have successfully add owner #{@name}"
end

get '/kittens' do
  @id = params[:id].to_i
  if @id > 0
    sql = "SELECT * FROM kittens WHERE id = #{@id}"
  else
    sql = "SELECT * FROM kittens"
  end
  response = db_exec(sql)
  @kittens = response.entries
  # sql = "SELECT * FROM owners"
  # response = db_exec(sql)
  # @owners = response.entries

  erb :get_kittens
end

post '/kittens' do
  @name = params[:new_name]
  @age = params[:new_age]
  @is_cute = params[:new_cute]
  @image = params[:new_image]
  @owner = params[:new_owner]
  sql = "INSERT INTO kittens(name, age, is_cute, image_url, owners_id)
  VALUES('#{@name}',#{@age},#{@is_cute},'#{@image}',#{@owner})"
  response = db_exec(sql)
  erb :created_kitten_post
end

get '/kittens/add' do
  sql = "SELECT * FROM owners"
  response = db_exec(sql)
  @owners = response.entries
erb :create_kittens
end

get '/kittens/delete' do
  sql = "SELECT * FROM kittens"
  response = db_exec(sql)
  @kittens = response.entries
  erb :delete_kittens
end

post '/kittens/delete' do
  @id = params[:delete_id]
  sql = "DELETE FROM kittens WHERE id = #{@id}"
  response = db_exec(sql)
  erb :delete_kittens_post
end

get '/kittens/update' do
  db_conn = PG.connect(:dbname => 'kitten_db',
   :host =>'localhost')
  sql = "SELECT * FROM kittens"
  response = db_exec(sql)
  @kittens = response.entries
  erb :update_kittens
end

post "/kittens/update" do
  id = params[:update_id]
  factor = params[:factor]
  @name = params[:update_name]
  age = params[:update_age]
  cute = params[:update_cute]
  image = params[:update_image]
  owner = params[:update_owner]
  db_conn = PG.connect(:dbname=>'kitten_db',
    :host => 'localhost')
    case
      when factor == "age"
      sql = "UPDATE kittens SET #{factor} = #{age}
      WHERE id = #{id}"
      when factor == "is_cute"
      sql = "UPDATE kittens SET #{factor} = #{cute}
      WHERE id = #{id}"
      when factor == "name"
      sql = "UPDATE kittens SET #{factor} = '#{@name}'
      WHERE id = #{id}"
      when factor == "image_url"
      sql = "UPDATE kittens SET #{factor} = '#{image}'
      WHERE id = #{id}"
      when factor == "owner_id"
      sql = "UPDATE kittens SET #{factor} = '#{owner}'
      WHERE id = #{id}"
    end
  updates = db_exec(sql)
  erb :update_kittens_post
end


