require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'pry'
require 'json'

# Create a single page Sinatra app that queries the Open Movies DB API by movie title
get '/' do
    erb :index
end

get '/movies' do
    erb :movies
end

get "/movies/search" do
  movie_title = params[:movie]
  url = "http://www.omdbapi.com/?i=&t=#{movie_title}"
  response = HTTParty.get(url)
  p response.to_s
end

