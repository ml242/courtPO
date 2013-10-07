=begin
TO DO LIST================================================
Set content to say "No search results found" when there are no search results. Otherwise I get a weird Nil error.
=end

require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'pry'
require 'json'

#============================
get '/search' do

erb :search
end
#============================

get '/results' do
  if params[:movie_title] == nil
    redirect back
  end
  movie_title = params[:movie_title]                                                #takes the user's input and stores it in a variable
  @movie_title = movie_title                                                             #converts movie title to instance variable for use in the 'results' view.
  url = "http://www.omdbapi.com/?s=" + movie_title                  #appends user's search string to the OMDB API's search query
  url = url.gsub(" ","%20")                                                                 #ensures that all user inputs have their spaces replaced by '%20', as URLs aren't allowed to have spaces in them
  results = HTTParty.get(url)                                                              #grabs info from the OMDB API.
  parsed_result = JSON.parse(results)                                          #parses the text sent from OMDB and turns it into a hash (with accessible values!)
  movies_array = parsed_result["Search"]                                    #dives into the hash and returns an array of the movies (as hashes) relating to the search query
  @movies_array = movies_array                                                #converts movies_array to an instance variable for use in the 'results' view.
  erb :results
end
#============================
get '/movies/:imdbID' do
  imdb_id = params[:imdbID]                                                      #saves imdbID as a string. Using the string we can access more information about the selected films
  movie_url = "http://www.omdbapi.com/?i=" + imdb_id          #saves a url that pulls in the desired imdb_id
  movie_hash = HTTParty.get(movie_url)                                 #grabs movie info from the imdb API
  @movie_hash = JSON.parse(movie_hash)                               #parses the text sent from imdb and turns it into a hash we can access and pull values from
  @title = @movie_hash["Title"]
  @year = @movie_hash["Year"]
  @rated = @movie_hash["Rated"]
  @released = @movie_hash["Released"]
  @runtime = @movie_hash["Runtime"]
  @genre = @movie_hash["Genre"]
  @director = @movie_hash["Director"]
  @writer = @movie_hash["Writer"]
  @actors = @movie_hash["Actors"]
  @plot = @movie_hash["Plot"]
  @poster_url = @movie_hash["Poster"]
  erb :movie_info
end
