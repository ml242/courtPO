require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'
require 'httparty'
require 'open-uri'
require 'cgi'
require 'pry'

get '/' do
	@title = 'RMDB'
	erb :index
end

post '/movies/search' do
	@title = "Search for #{params[:movie_search]}"
	search_request = URI::encode(params[:movie_search])
	omdb_result = HTTParty.get("http://www.omdbapi.com/?s=#{search_request}")
	@parsed_result = JSON.parse(omdb_result)["Search"]
	erb :search_result
end

get '/movies/:imdbID' do
	imdbID = params[:imdbID]
	omdb_result = HTTParty.get("http://www.omdbapi.com/?i=#{imdbID}&plot=full&tomatoes=true")
	@parsed_result = JSON.parse(omdb_result)
	erb :movie_info
end