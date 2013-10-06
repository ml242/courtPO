require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require 'pry'

movie_titles = []

get '/movies' do
  erb :movies
end

get '/movies/search' do
  @movie_titles = movie_titles
  erb :search
end

post '/movies/search' do
  @title = params["title"]
  url = "http://www.omdbapi.com/?s=" + @title
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)
  search_results = parsed_result["Search"]
  search_results.each do |hash|
    binding.pry
    @movie_title = hash["Title"]
    movie_titles.push(@movie_title.to_s)
  end
  redirect to ("/movies/search")
end
