require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'
require 'httparty'

get '/' do
	erb :index
end

post '/movies/search' do

	erb :search_result
end

get '/movies/:imdbID' do

	erb :movie_info
end