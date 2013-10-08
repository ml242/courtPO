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
  "works"
end

get '/search' do
  search = params[:q]
  response = HTTParty.get("http://www.omdbapi.com/?s=#{CGI::escape(search)}")
  parsed_result = JSON.parse(response)
  @search_results = parsed_result["Search"]
  @movies = []
  @search_results.each do |movie|
    movie_hash = {
      :imdb_id => movie['imdbID'],
      :title => movie["Title"],
      :year => movie["Year"]
    }
    @movies << movie_hash
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
  erb :index
end

post '/favorites' do
  fav_movieID = params[:imdb_id]
  response = HTTParty.get("http://www.omdbapi.com/?i=#{fav_movieID}")
  fav_movie_parsed_result = JSON.parse(response)
  title = fav_movie_parsed_result['Title']
  poster = fav_movie_parsed_result['Poster']
  poster_alt = fav_movie_parsed_result['Title']
  genre = fav_movie_parsed_result['Genre']
  runtime = fav_movie_parsed_result['Runtime']
  rated = fav_movie_parsed_result['Rated']
  plot = fav_movie_parsed_result['Plot']
  director = fav_movie_parsed_result['Director']
  writer = fav_movie_parsed_result['Writer']
  actors = fav_movie_parsed_result['Actors']
  imdb_rating = fav_movie_parsed_result['imdbRating']

  db_connection = PG.connect :dbname => 'movies_db', :host=> 'localhost'
  sql = "INSERT INTO movies (title, poster, posteralt, genre, runtime, rated, plot, director, writer, actors, imdbrating)
  VALUES ('#{title}', '#{poster}', '#{poster_alt}', '#{genre}', '#{runtime}', '#{rated}', '#{plot}', '#{director}', '#{writer}', '#{actors}', '#{imdb_rating}')"
  db_connection.exec sql
  db_connection.close
  redirect '/favorites'
end


