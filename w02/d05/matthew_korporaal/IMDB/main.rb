# encoding: utf-8
require 'sinatra'
require 'sinatra/reloader' if development?
require 'HTTParty'

require 'json'
# debugging
require 'pry'
require 'rainbow'

  title = []
  year = []
  imdbID = []
  movie_name = String

get '/' do
  erb :index
end

get '/movies/search' do
  @search_results = {}
  @search_results[:name] = movie_name
  @search_results[:title] = title
  @search_results[:year] = year
  @search_results[:imdbID] = imdbID
  erb :search
end

get '/movies/:imdbID' do
  url = "http://www.omdbapi.com/?i=#{params[:imdbID]}&t="
  response = HTTParty.get(url)
  # if !movie not found
  parsed_result = JSON.parse(response.body)
  @movie_info = {}
  @movie_info[:title] = parsed_result["Title"]
  @movie_info[:year] = parsed_result["Year"]
  @movie_info[:rated] = parsed_result["Rated"]
  @movie_info[:released] = parsed_result["Released"]
  @movie_info[:runtime] = parsed_result["Runtime"]
  @movie_info[:genre] = parsed_result["Genre"]
  @movie_info[:director] = parsed_result["Director"]
  @movie_info[:writer] = parsed_result["Writer"]
  @movie_info[:actors] = parsed_result["Actors"]
  @movie_info[:plot] = parsed_result["Plot"]
  @movie_info[:imdbURL] = "http://www.imdb.com/title/#{params[:imdbID]}"
  erb :result
end

# http://www.omdbapi.com/?s=True%20Grit
post '/movies/search' do
  movie_name = params[:movie_name]
  search_string = movie_name.gsub(" ","%20")
  url = "http://www.omdbapi.com/?s=#{search_string}"
  response = HTTParty.get(url)
  # if !movie not found
  parsed_result = JSON.parse(response.body)
  parsed_result["Search"].each do |search_index|
    if search_index["Type"] == "movie"
      title << search_index["Title"]
      year << search_index["Year"]
      imdbID << search_index["imdbID"]
    end
  end
  redirect to("/movies/search")
end


