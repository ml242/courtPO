require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require 'cgi'
require 'pg'
require 'pry'


get '/' do
  erb :search
end

get '/movies/search' do
  movie_title = CGI.escape(params[:movie_title])
  url = "http://www.omdbapi.com/?s=#{movie_title}"
  response = HTTParty.get(url)
  parsed_response = JSON.parse(response)
  if parsed_response.has_key?("Response")
    redirect to("/error")
  # get each movie title and match it to the imdbID
  # in a new hash called "movie_list"
  else
    @movie_list = {}
    parsed_response["Search"].each do |movie|
      @movie_list[movie["Title"]] = movie["imdbID"]
    end
    erb :results
  end
end

get '/error' do
  erb :error
end

get '/movies/:imdbID' do
  url = "http://www.omdbapi.com/?i=#{params[:imdbID]}"
  response = HTTParty.get(url)
  parsed_response = JSON.parse(response)
  @title = parsed_response["Title"]
  @released = parsed_response["Released"]
  @rating = parsed_response["Rated"]
  @runtime = parsed_response["Runtime"]
  @genre = parsed_response["Genre"]
  @director = parsed_response["Director"]
  @writer = parsed_response["Writer"]
  @actors = parsed_response["Actors"]
  @plot = parsed_response["Plot"]
  @poster = parsed_response["Poster"]
  @imdb = parsed_response["imdbID"]
  erb :movie_info
end

post '/faves' do
  poop = params["id"]
  db_connection = PG.connect(:dbname => 'movies_db', :host => 'localhost')
  sql = "INSERT INTO movies (imdbID) VALUES ('#{poop}');"
  db_connection.close
  redirect to ('/faves')
end

get '/faves' do
  db_connection = PG.connect(:dbname => 'movies_db', :host => 'localhost')
  sql = "SELECT * FROM movies;"
  response = db_connection.exec(sql)
  db_connection.close
  @response_array = response.entries.to_s
  erb :faves
end

