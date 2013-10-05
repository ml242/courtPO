require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'pry'
require 'json'

get '/' do

erb :search
end
#============================
get '/movies' do

erb :search
end
#============================
get '/results' do
  movie_title = params[:movie_title]                                                #takes the user's input and stores it in a variable
  @movie_title = movie_title                                                             #converts movie title to instance variable for use in the 'results' view.
  url = "http://www.omdbapi.com/?s=" + movie_title                  #appends user's search string to the OMDB API's search query
  url = url.gsub(" ","%20")                                                                 #ensures that all user inputs have their spaces replaced by '%20', as URLs aren't allowed to have spaces in them
  results = HTTParty.get(url)                                                              #grabs info from the OMDB API.
  parsed_result = JSON.parse(results)                                          #parses the text sent from OMDB and turns it into a hash (with accessible values!)
  movies_array = parsed_result["Search"]                                 #dives into the hash and returns an array of the movies (as hashes) relating to the search query
  @movie_titles = []                                                                     #empty array to push movies titles into (see below)
  movies_array.each do |movie_hash|                                         #pushes all movie titles into an array
    @movie_titles << movie_hash["Title"]
  end
  erb :results
end
#============================
