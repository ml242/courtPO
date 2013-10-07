require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require 'pry'

get "/" do  # SEARCH FORM 
  erb :index
end

get "/movies/search" do
  # DISPLAY ALL THE TITLES THAT MATCH THEIR SEARCH
  # MAKE THEM INTO LINKS WHICH GO TO FULL INFO ON THAT MOVIE

  query = params[:title].gsub(" ","+")
  response = HTTParty.get("http://www.omdbapi.com/?s=#{query}")
  r = JSON.parse(response)

  unless r.has_key? "Search" # IN CASE THERE ARE NO RESULTS! 
    erb :nores 
  else
    @results =  r["Search"]
    erb :search
  end
end

get "/movies/:id" do
  imdbid = params[:id]
  response = HTTParty.get("http://www.omdbapi.com/?i=#{imdbid}")
  results = JSON.parse(response)
  l = %w(Title Year Actors Plot Director Genre imdbRating Released Runtime imdbRating Poster)
  @results = results.select { |result| l.include? result }
  erb :display
end
