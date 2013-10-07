require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require 'cgi'
require 'pry'

search_results = []
movie_info = []


get '/movies' do
  erb :movies
end

get '/movies/search' do
  @search_results = search_results
  erb :search
end

post '/movies/search' do
  @encoded_title = CGI::escape(params["title"])
  url = "http://www.omdbapi.com/?s=" + @encoded_title
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)
  @search_results = parsed_result["Search"]
  search_results = @search_results
  redirect to ("/movies/search")
end

get '/movies/:id' do
  id = params[:id]
  post_info = "http://www.omdbapi.com/?i=#{id}"
  response = HTTParty.get(post_info)
  @parsed_result = JSON.parse(response)
  @movie_info = @parsed_result
  erb :id
end
