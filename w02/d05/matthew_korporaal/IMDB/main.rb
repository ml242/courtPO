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
  error = ""

get '/' do
  @tab_name = "OMDB"
  if error.nil?
    erb :index
  else
    @error = error
    erb :index
  end
end

get '/movies/search' do
  @tab_name = "OMDB: Search"
  @search_results = {}
  @search_results[:name] = movie_name
  @search_results[:title] = title
  @search_results[:year] = year
  @search_results[:imdbID] = imdbID
  # Reset variables so they don't show up in next search results
  title = []
  year = []
  imdbID = []
  movie_name = String
  erb :search
end

get '/movies/:imdbID' do
  # create search url,submit to omdb api,parse and send to render page
  url = "http://www.omdbapi.com/?i=#{params[:imdbID]}&t="
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response.body)
  @tab_name = parsed_result["Title"]
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
  @movie_info[:poster] = parsed_result["Poster"]
  @movie_info[:imdbURL] = "http://www.imdb.com/title/#{params[:imdbID]}"
  erb :result
end

post '/movies/search' do
  # create search url and submit to omdb api
  movie_name = params[:movie_name]
  search_string = movie_name.gsub(" ","%20")
  url = "http://www.omdbapi.com/?s=#{search_string}"
  response = HTTParty.get(url)
  # If search term is valid then parse and return results
  if response[29..44] == "Movie not found!"
    error = "Error: Movie not found!"
    redirect to("/")
  elsif response[29..65] == "Must provide more than one character."
    error = "Error: Must provide more than one character."
    redirect to("/")
  elsif response[29..52] == "Object reference not set"
    error = "Error: Enter a valid search term."
    redirect to("/")
  else
    error = ""
    # otherwise parse the result and send to search result page
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
end


