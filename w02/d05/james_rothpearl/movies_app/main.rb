# encoding: utf-8
require 'sinatra'
require 'sinatra/reloader' if development?
# debugging
require 'pry'
require 'httparty'
require 'json'

movie_name = []


#includes movie search form
get '/' do
  erb :index
end

###/search page path will list the search result history of the search form from index.erb
get '/movies/search' do
  @movies_search = params[:movie]
  response = HTTParty.get("http://www.omdbapi.com/?s=#{@movies_search}&r=JSON")

  p response

  parsed_response = JSON.parse(response)

  @response_array = parsed_response["Search"]

  @response_array.each do |key|
    p "Key is #{key}"
    p "#{key["Title"]} and #{key["imdbID"]}"
  end

  erb :search
end



