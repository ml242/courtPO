require 'sinatra'
require 'sinatra/reloader' if development?
# require 'httparty'
# require 'json'
require 'rainbow'
require 'cgi'
require 'pry'
require_relative 'movie_app_methods'

# http://www.omdbapi.com/
# s (NEW!)   string (optional)   title of a movie to search for
# i  string (optional)   a valid IMDb movie id
# t  string (optional)   title of a movie to return
# y  year (optional)   year of the movie
# r  JSON, XML   response data type (JSON default)
# plot   short, full   short or extended plot (short default)
# callback   name (optional)   JSONP callback name
# tomatoes   true (optional)   adds rotten tomatoes data

get '/' do
  erb :search
end

get '/test' do
  url = "http://www.omdbapi.com/?"
  s = 's=' + query
  url += s
end

get '/movies/search' do
  erb :search
end

get '/movies/results' do
  query = CGI::escape(params[:query])
  url = "http://www.omdbapi.com/?"
  s = 's=' + query
  url += s
  api_call_search(url)

  erb :results
end

get '/movies/:imdbID' do
  url = "http://www.omdbapi.com/?"
  imdbID = params[:imdbID]
  i = 'i=' + imdbID
  url += i
  api_call_imdbID(url)
  erb :movie
end


























