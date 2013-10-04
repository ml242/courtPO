# encoding: utf-8
require 'sinatra'
require 'sinatra/reloader' if development?
# debugging
require 'pry'
require 'rainbow'
require 'HTTParty'

get '/' do
  erb :index
end

get '/movies/search' do
  movie_name = params[:t]
  response = HTTParty.get("http://www.omdbapi.com/?s=" + movie_name + "&r=XML")
  if response != nil
    @movie_array = response["root"]["Movie"]
  else
    @movie_array = ["Sorry, no movies matched that title."]
  end
erb :results

end