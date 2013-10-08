=begin
TO DO LIST================================================
Set content to say "No search results found" when there are no search results. Otherwise I get a weird Nil error.
=end

require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'pry'
require 'json'
require 'pg'

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
#============================
get '/movies/:imdbID' do
  imdb_id = params[:imdbID]                                                      #saves imdbID as a string. Using the string we can access more information about the selected films
  @imdb_id = imdb_id                                                                  #for later use: must append to the URL for /favs/:imdbID
  movie_url = "http://www.omdbapi.com/?i=" + imdb_id          #saves a url that pulls in the desired imdb_id
  movie_hash = HTTParty.get(movie_url)                                 #grabs movie info from the imdb API
  movie_hash = JSON.parse(movie_hash)                                 #parses the text sent from imdb and turns it into a hash we can access and pull values from
  @movie_hash = movie_hash
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
#============================
#============================
get '/favs' do
  db_connection = PG.connect(:dbname => 'movies_db', :host => 'localhost')        #establishes connection to movies_db so I can retrieve the favorite
  params.each do |k, v|
    params[k] = db_connection.escape(v)
  end
  sql = "SELECT * FROM movies_2"                                                                                      #postgres command  string for remote/removed execution
  response = db_connection.exec(sql)                                                                            #execute the SQL outlined above
  db_connection.close                                                                                                       #always be closing
  @movies = response.entries                                                                                          #converts the response into an accessible array of hashes                                      #create an instance variable for url, so we can link the favorite movies back to a movie view page
  erb :favs
end
#============================
#============================
post '/favs' do

  db_connection = PG.connect(:dbname => 'movies_db', :host => 'localhost')        #establishes connection to movies_db

  params.each do |k, v|
    params[k] = db_connection.escape(v)
  end

  title = params[:title]
  year = params[:year]
  rated = params[:rated]
  released = params[:released]
  runtime = params[:runtime]
  genre = params[:genre]
  director = params[:director]
  writer = params[:writer]
  actors = params[:actors]
  plot = params[:plot]
  imdb = params[:imdb]

  sql = "INSERT INTO movies_2 (title, year, rated, released, runtime, genre, director, writer, actors, plot, imdb)
  VALUES ('#{title}', #{year}, '#{rated}', '#{released}', '#{runtime}', '#{genre}', '#{director}', '#{writer}', '#{actors}', '#{plot}', '#{imdb}')"
  response = db_connection.exec(sql)



  #always remember to close
  db_connection.close
  redirect back
end
