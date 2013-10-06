require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'httparty'
require 'json'
require 'rainbow'
require 'cgi'

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

get '/movies/search' do
  erb :search
end

get '/movies/results' do
  query = CGI::escape(params[:query])
  url = "http://www.omdbapi.com/?"
  s = 's=' + query
  url += s
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)
  puts parsed_result.to_s.color(:red)

  if parsed_result.key?('Error')
    @results = parsed_result['Error']
  else
    @results = parsed_result['Search']
  end
  erb :results
end

get '/movies/:imdbID' do
  url = "http://www.omdbapi.com/?"
  imdbID = params[:imdbID]
  i = 'i=' + imdbID
  url += i
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)
  @results = parsed_result
  @title_search = CGI::escape(@results['Title'])
  erb :movie
end



