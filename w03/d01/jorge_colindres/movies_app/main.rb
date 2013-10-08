require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require 'cgi'
require 'pg'

require 'pry'
require 'pry-nav'
require 'pry-remote'


get '/' do
  erb :index
end

get '/favorites' do
  db_connection = PG.connect :dbname => 'movies_db', :host=> 'localhost'
  sql = "SELECT * FROM movies"
  response = db_connection.exec sql
  db_connection.close
  saved_favs = response.entries
  @favs = []
  saved_favs.each do |movie|
    movie_hash = {
      :title => movie['title'],
      :poster => movie['poster'],
      :poster_alt => movie['posteralt'],
      :imdb_id => movie['imdbid']
    }
    @favs << movie_hash
    @favs.uniq!
  end
  erb :favs
end

get '/search' do
  search = params[:q]
  response = HTTParty.get("http://www.omdbapi.com/?s=#{CGI::escape(search)}")
  parsed_result = JSON.parse(response)
  @search_results = parsed_result["Search"]
  @movies = []
  unless @search_results.nil?
    @search_results.each do |movie|
      movie_hash = {
        :imdb_id => movie['imdbID'],
        :title => movie["Title"],
        :year => movie["Year"]
      }
      @movies << movie_hash
    end
  end
  erb :index
end

get '/:imdbID' do
  movieID = params[:imdbID]
  response = HTTParty.get("http://www.omdbapi.com/?i=#{movieID}")
  movie_parsed_result = JSON.parse(response)
  @movie = {
    :title => movie_parsed_result['Title'],
    :poster => movie_parsed_result['Poster'],
    :poster_alt => movie_parsed_result['Title'],
    :genre => movie_parsed_result['Genre'],
    :runtime => movie_parsed_result['Runtime'],
    :rated => movie_parsed_result['Rated'],
    :plot => movie_parsed_result['Plot'],
    :director => movie_parsed_result['Director'],
    :writer => movie_parsed_result['Writer'],
    :actors => movie_parsed_result['Actors'],
    :imdb_rating => movie_parsed_result['imdbRating'],
    :imdb_id => movie_parsed_result['imdbID']
  }
  if @movie[:poster] == "N/A"
    @movie[:poster] = "http://placehold.it/330x450&text=No Poster"
    @movie[:poster_alt] = "No Poster"
  end

  db_connection = PG.connect :dbname => 'movies_db', :host=> 'localhost'
  sql = "SELECT * FROM movies"
  response = db_connection.exec sql
  db_connection.close
  saved_favs = response.entries
  @favs_ids = []
  saved_favs.each do |movie|
    @favs_ids << movie['imdbid']
    @favs_ids.uniq!
  end

  erb :movie
end

post '/favorites' do
  fav_movieID = params[:imdb_id]
  response = HTTParty.get("http://www.omdbapi.com/?i=#{fav_movieID}")
  fav_movie_parsed_result = JSON.parse(response)

  db_connection = PG.connect :dbname => 'movies_db', :host=> 'localhost'

  title = db_connection.escape(fav_movie_parsed_result['Title'])
  poster = db_connection.escape(fav_movie_parsed_result['Poster'])
  poster_alt = db_connection.escape(fav_movie_parsed_result['Title'])
  genre = db_connection.escape(fav_movie_parsed_result['Genre'])
  runtime = db_connection.escape(fav_movie_parsed_result['Runtime'])
  rated = db_connection.escape(fav_movie_parsed_result['Rated'])
  plot = db_connection.escape(fav_movie_parsed_result['Plot'])
  director = db_connection.escape(fav_movie_parsed_result['Director'])
  writer = db_connection.escape(fav_movie_parsed_result['Writer'])
  actors = db_connection.escape(fav_movie_parsed_result['Actors'])
  imdb_rating = db_connection.escape(fav_movie_parsed_result['imdbRating'])
  imdb_id = db_connection.escape(fav_movie_parsed_result['imdbID'])

  sql = "INSERT INTO movies (title, poster, posteralt, genre, runtime, rated, plot, director, writer, actors, imdbrating, imdbid)
  VALUES ('#{title}', '#{poster}', '#{poster_alt}', '#{genre}', '#{runtime}', '#{rated}', '#{plot}', '#{director}', '#{writer}', '#{actors}', '#{imdb_rating}', '#{imdb_id}')"
  db_connection.exec sql

  redirect '/favorites'
end


