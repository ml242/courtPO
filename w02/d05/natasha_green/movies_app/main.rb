require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'pry'
require 'json'


get '/' do
  erb :index
end

get '/movies/search' do
     @results = params[:query]
    url = "http://www.omdbapi.com/?s=#{@results}"
    response =  HTTParty.get(url)
    json_response = JSON.parse(response)
    @movies = json_response["Search"]
   erb :results
  end

get '/movies/:imdbID' do
    imdbID= params[:imdbID]
    url = "http://www.omdbapi.com/?i=#{imdbID}"
    response =  HTTParty.get(url)
    @movie = JSON.parse(response)
   erb :movie
end

