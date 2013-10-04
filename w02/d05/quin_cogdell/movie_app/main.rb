require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'httparty'

url = "http://www.omdbapi.com/?t=Rambo"

get '/' do
  response = HTTParty.get("http://graph.facebook.com/quincogdell")
  first_name = response['first_name']
  first_name
  #erb :index
end

get '/movies/search' do
  movie_data = HTTParty.get(url)
  movie_data.to_s
end

