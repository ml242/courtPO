require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'pg'
require 'json'
require 'pry'
# parsed_result_JSON.parse(response)

get '/' do
erb :index
end

get '/movies/search' do
movie = params[:movie].gsub(/\s/, '+') if params[:movie]
url = "http://www.omdbapi.com/?s=#{movie}"
response = HTTParty.get(url)
data = JSON.parse(response)
@array_of_movies = data["Search"]
erb :movies
end

get '/movies/:id' do
@id = params[:id]
movie_url = "http://www.omdbapi.com/?i=#{@id}"
new_response = HTTParty.get(movie_url)
@new_data = JSON.parse(new_response)
@title = @new_data["Title"]
@year = @new_data["Year"]
@rated = @new_data["Rated"]
@released = @new_data["Released"]
@runtime = @new_data ["Runtime"]
@genre = @new_data["Genre"]
@director = @new_data["Director"]
@writer = @new_data["Writer"]
@actors = @new_data["Actors"]
@plot = @new_data["Plot"]
erb :movie
end

post '/faves' do
  movie_id = params[:imdbID]
  new_url = "http://www.omdbapi.com/?i=#{movie_id}"
  new_response = HTTParty.get(new_url)
  @new_data = JSON.parse(new_response)
  title_new = @new_data["Title"]
  year_new = @new_data["Year"]
  sql = "INSERT INTO movies (title, year) VALUES ('#{title_new}', '#{year_new}')"
  db_connection = PG.connect(:dbname => 'movies_db', :host => 'localhost')
  db_connection.exec(sql)
  db_connection.close
  redirect to('/faves')
end

get '/faves' do
  db_connection = PG.connect(:dbname => 'movies_db', :host => 'localhost')
  sql2 = "SELECT * FROM movies"
  binding.pry
  response = db_connection.exec(sql2)
  @info = response.entries
  db_connection.close
  erb :faves
end
