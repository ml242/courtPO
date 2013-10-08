require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require 'pry'
# parsed_result_JSON.parse(response)

get '/' do
erb :index
end

get '/movies/search' do
movie = params[:movie].gsub(/\s/, '+')
url = "http://www.omdbapi.com/?s=#{movie}"
response = HTTParty.get(url)
data = JSON.parse(response)
@array_of_movies = data["Search"]
erb :movies
end

get '/movies/:id' do
id = params[:id]
movie_url = "http://www.omdbapi.com/?i=#{id}"
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


