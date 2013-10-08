require 'sinatra'
require 'sinatra/reloader' if development?
# require 'httparty'
# require 'json'
require 'rainbow'
require 'cgi'
require 'pry'
require 'pg'
require_relative 'movie_app_methods'


get '/' do
  erb :search
end

get '/movies/search' do
  erb :search
end

get '/movies/results' do
  query = CGI::escape(params[:query])
  url = "http://www.omdbapi.com/?"
  s = 's=' + query
  url += s
  @results = api_call_search(url)
  erb :results
end

get '/movies/:imdbID' do
  url = "http://www.omdbapi.com/?"
  imdbID = params[:imdbID]
  i = 'i=' + imdbID
  url += i
  @results = api_call_imdbID(url)
  @title_search = CGI::escape(@results['Title'])
  erb :movie
end

post '/movies' do
  url = "http://www.omdbapi.com/?"
  imdbID = params[:imdbID]
  i = 'i=' + imdbID
  url += i
  @results = api_call_imdbID(url)

  db_connection = PG.connect(
    :dbname => 'movies_db',
    :host => 'localhost'
    )
  sql = "INSERT INTO movies (
      title,
      year,
      rated,
      released,
      runtime,
      genre,
      writer,
      actors,
      plot,
      poster,
      imdbRating,
      imdbVotes,
      imdbID)
      VALUES ( '#{@results["Title"]}',
        '#{@results["Year"]}',
        '#{@results["Rated"]}',
        '#{@results["Released"]}',
        '#{@results["Rated"]}',
        '#{@results["Runtime"]}',
        '#{@results["Genre"]}',
        '#{@results["Actors"]}',
        '#{@results["Plot"]}',
        '#{@results["Poster"]}',
        '#{@results["imdbRating"]}',
        '#{@results["imdbVotes"].to_i}',
        '#{@results["imdbID"]}'
        )"
  #binding.pry
  db_connection.exec(sql)
  db_connection.close


  #erb :index
  redirect to ("/favorites")

end


get '/favorites' do
  db_connection = PG.connect(:dbname => 'movies_db', :host => 'localhost')

  sql = "SELECT * FROM movies"
  results = db_connection.exec(sql)

  db_connection.close
  @results = results.entries

  erb :favorites

end






























