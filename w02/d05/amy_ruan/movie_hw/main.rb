require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'

COLOR = ["#FFBF00", "#FACADE","#0080FF","#01DF3A","#FF0080"]

get '/movies' do
  @color = COLOR.sample
  erb :index
end

get '/movies/search' do
  @color = COLOR.sample
  @movie=params[:query]
  @movie.to_s.capitalize!
  @movie.gsub!(" ","%20")
  response = HTTParty.get("http://www.omdbapi.com/?s=" + @movie)
  @results_parsed = []
  @search_parsed = JSON.parse(response)["Search"]
  @search_parsed.each do |x| @results_parsed << x end
  erb :movies
end

get '/movies/:imdbiD' do
  @color = COLOR.sample
  @id = params[:imdbiD].to_s
  response = HTTParty.get("http://www.omdbapi.com/?i=" + @id)
  @title = JSON.parse(response)["Title"]
  @year = JSON.parse(response)["Year"]
  @rated = JSON.parse(response)["Rated"]
  @released = JSON.parse(response)["Released"]
  @runtime = JSON.parse(response)["Runtime"]
  @genre = JSON.parse(response)["Genre"]
  @director = JSON.parse(response)["Director"]
  @writer = JSON.parse(response)["Writer"]
  @actors = JSON.parse(response)["Actors"]
  @plot = JSON.parse(response)["Plot"]
  @poster = JSON.parse(response)["Poster"]
  @response_2 = JSON.parse(response)["Response"]
  erb :movies_info
end

get '/movies/:imdbiD/poster_link' do
  @color = COLOR.sample
  @id = params[:imdbiD].to_s
  response = HTTParty.get("http://www.omdbapi.com/?i=" + @id)
  # @imdbiD_parsed = JSON.parse(response)["imdbID"]
  @poster = JSON.parse(response)["Poster"]
  @title = JSON.parse(response)["Title"]
  erb :main_redirect_pic
end
