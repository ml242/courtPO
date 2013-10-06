require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'

require 'pry'
require 'pry-nav'
require 'pry-remote'


get '/' do
  erb :index
end

get '/search' do
  search = params[:q]
  response = HTTParty.get("http://www.omdbapi.com/?s=#{search}")
  parsed_result = JSON.parse(response)
  @search_results = parsed_result["Search"]
  # binding.pry
  erb :index
end

get '/movies/:imdbID' do
  movieID = params[:imdbID]
  response = HTTParty.get("http://www.omdbapi.com/?i=#{movieID}")
  parsed_result = JSON.parse(response)
  @movie = parsed_result
  # binding.pry
  erb :index
end

