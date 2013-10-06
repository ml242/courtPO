require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require 'cgi'
require 'pry'

#later: do if title.nil? display page that says no results were found.

movie_titles = []

get '/movies' do
  erb :movies
end

get '/movies/search' do
  @movie_titles = movie_titles
  erb :search
end

post '/movies/search' do
  @encoded_title = CGI::escape(params["title"])
  url = "http://www.omdbapi.com/?s=" + @encoded_title
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)
  search_results = parsed_result["Search"]
  movie_titles.clear
  search_results.each do |hash|
    @movie_title = hash["Title"]
    movie_titles.push(@movie_title.to_s)
  end
  redirect to ("/movies/search")
end
