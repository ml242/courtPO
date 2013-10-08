require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require 'pry'
require 'pry-nav'


get '/' do
  erb :index
end

get '/search' do
  search = params[:query]
  response = HTTParty.get("http://www.omdbapi.com/?s=#{search}")
  parsed_result = JSON.parse(response)
  @results = parsed_result["Search"]
  erb :index
end

get '/:imdbID' do
  movieID = params[:imdbID]
  response = HTTParty.get("http://www.omdbapi.com/?i=#{movieID}")
  parsed_result = JSON.parse(response)
  @movie = parsed_result
  erb :index
end

