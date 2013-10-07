require 'sinatra'
require 'sinatra/reloader' if development?
# require 'httparty'
# require 'json'
require 'rainbow'
require 'cgi'
require 'pry'
require 'pg'
require_relative 'movie_app_methods'


get '/' do
  erb :search
end

get '/movies/search' do
  erb :search
end

get '/movies/results' do
  query = CGI::escape(params[:query])
  url = "http://www.omdbapi.com/?"
  s = 's=' + query
  url += s
  @results = api_call_search(url)
  erb :results
end

get '/movies/:imdbID' do
  url = "http://www.omdbapi.com/?"
  imdbID = params[:imdbID]
  i = 'i=' + imdbID
  url += i
  #binding.pry
  @results = api_call_imdbID(url)
  @title_search = CGI::escape(@results['Title'])
  #binding.pry
  erb :movie
end


























