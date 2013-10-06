require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'
require 'httparty'
require 'pry'

get '/' do
	@title = 'RMDB'
	erb :index
end

post '/movies/search' do
	@title = "Search for #{params[:movie_search]}"
	search_request = params[:movie_search].split(' ').join('+')
	omdb_result = HTTParty.get("http://www.omdbapi.com/?i=&t=#{search_request}")
	@parsed_result = JSON.parse(omdb_result)
	erb :search_result
end

get '/movies/:imdbID' do
	imdbID = params[:imdbID]
	omdb_result = HTTParty.get("http://www.omdbapi.com/?i=#{imdbID}&plot=full&tomatoes=true")
	@parsed_result = JSON.parse(omdb_result)
	erb :movie_info
end