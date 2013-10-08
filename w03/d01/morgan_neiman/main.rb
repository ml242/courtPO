# encoding: utf-8
require 'sinatra'
require 'sinatra/reloader' if development?
# debugging
require 'pry'
require 'rainbow'
require 'HTTParty'
require 'pg'

get '/' do
  erb :index
end

get '/movies/search' do
  movie_name = params[:t]
  if movie_name.split(' ').length > 1
    movie_name_array = movie_name.split(' ')
    movie_name = ""
    movie_name_array.each do |word|
      movie_name += word + "+"
    end
  else
    movie_name = params[:t]
  end
  response = HTTParty.get("http://www.omdbapi.com/?s=" + movie_name + "&r=XML")
  if response != nil
    @movie_array = response["root"]["Movie"]
  else
    @movie_array = ["Sorry, no movies matched that title."]
  end
  erb :results

end

get '/movies/:id' do
  id = params[:id]
  @id = id
  response = HTTParty.get("http://www.omdbapi.com/?i=" +  id + "&r=XML")
  if response != nil
    @name = response["root"]["movie"]["title"]
    @year = response["root"]["movie"]["year"]
    @rating = response["root"]["movie"]["rated"]
    @released = response["root"]["movie"]["released"]
    @genre = response["root"]["movie"]["genre"]
    @runtime = response["root"]["movie"]["runtime"]
    @director = response["root"]["movie"]["director"]
    @writer = response["root"]["movie"]["writer"]
    @actors = response["root"]["movie"]["actors"]
    @plot = response["root"]["movie"]["plot"]
    name_var = @name
    @search_name = ""
    if name_var.split(' ').length > 1
      movie_name_array = name_var.split(' ')
      movie_name_array.each do |word|
        @search_name += word + "+" ## WHY IS THIS NIL
      end
    else
      @search_name = @name
    end
    if response["root"]["movie"]["poster"] != "N/A"
     @poster = response["root"]["movie"]["poster"]
   else
    @poster = "http://www.findingbetteragencies.com/wp-content/uploads/HomerSimpsonDoh.png"
  end
  @isfull = true
else
  @isfull = false
end
@search = "http://www.google.com/search?q=" +  @search_name
   # @search_name
   erb :id_results
 end

 post '/faves' do
  id = params[:id]
  sql = "INSERT INTO movies (imdb_id) VALUES ('#{id}');"
  db_connection = PG.connect(:dbname => 'movies_db', :host => 'localhost')
  db_connection.exec(sql)
  db_connection.close
  redirect '/faves'
end

get '/faves' do
  db_connection = PG.connect(:dbname => 'movies_db', :host => 'localhost')
  sql = "SELECT * FROM movies"
  response = db_connection.exec(sql)
  db_connection.close
  @id_array = []
  @movie_array = []
  response.entries.each do |entry|
    @id_array << entry["imdb_id"]
  end
  @id_array.each do |id|
    movie_info = HTTParty.get("http://www.omdbapi.com/?i=" +  id + "&r=XML")
   # binding.pry
   title = movie_info["root"]["movie"]["title"]
    # binding.pry
    movie_hash = {
      :title => title,
      :id => id
    }
    # binding.pry
    @movie_array << movie_hash
    # binding.pry
  end
  erb :faves
end


# <% if @movie_array != nil %>
# <% @movie_array.each do |movie_hash| %>
# <br><a href="/movies/<%= movie_hash[:id] %>"><%= movie_hash[:title] %></a>
# <% end %>
# <% else %>
# <img src="http://www.findingbetteragencies.com/wp-content/uploads/HomerSimpsonDoh.png">
# <p>You don't have any favorites!</p>
# <% end %>