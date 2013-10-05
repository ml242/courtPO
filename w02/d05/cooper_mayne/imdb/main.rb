require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require 'pry'
#after httpary i'll have to JSON.parse(response)

get "/" do
  #search form
  erb :index
end

get "/movies/search" do
  #display all the titles that match their search
  #make them into links which go to full info on that movie

  @query = params[:title]
  query = @query.gsub(" ","+")
  response = HTTParty.get("http://www.omdbapi.com/?s=#{query}")
  r = JSON.parse(response)
  @results =  r["Search"]
  erb :search
end

get "/movies/:id" do
  imdbid = params[:id]
  response = HTTParty.get("http://www.omdbapi.com/?i=#{imdbid}")
  @result = JSON.parse(response)
  erb :display
end
