require 'sinatra'
require 'sinatra/reloader.rb' if development?
require 'pry'
require 'cgi'
require 'json'
require 'httparty'
require 'pg'

get "/" do
  erb :search
end



get "/movies/search" do
  query = params[:q]
  query = CGI::escape(query)
  url = "http://www.omdbapi.com/?s=#{query}"
  response_string = HTTParty.get(url)
  response = JSON.parse(response_string)

  @movie_hashes = []
  response["Search"].each do |movie_hash|
    imdb_id = movie_hash["imdbID"]
    url = "/movies/#{imdb_id}"

    movie_hash = {
      :title => movie_hash["Title"],
      :year => movie_hash["Year"],
      :type => movie_hash["Type"],
      :url => url
    }
    @movie_hashes << movie_hash
  end
  erb :results
end



get "/movies/:imdb_id" do
  imdb_id = params[:imdb_id]
  imdb_id = CGI::escape(imdb_id)
  url = "http://www.omdbapi.com/?i=#{imdb_id}"

  response_string = HTTParty.get(url)
  response = JSON.parse(response_string)

  poster_url = response["Poster"]
  if poster_url == "N/A"
    poster_url = "Search Google"
  end

  @movie = {
    :title => response["Title"],
    :year => response["Year"],
    :rated => response["Rated"],
    :released => response["Released"],
    :runtime => response["Runtime"],
    :genre => response["Genre"],
    :director => response["Director"],
    :writer => response["Writer"],
    :actors => response["Actors"],
    :plot => response["Plot"],
    :poster => poster_url
  }

  erb :movie
end


get '/movies/faves/' do
  db_connection = PG.connect(
    :dbname => 'movies_db',
    :host => 'localhost')

  sql = "SELECT * FROM movies"
  response = db_connection.exec(sql)
  response.entries

db_connection.close
end



post '/movies/faves' do
  db_connection = PG.connect(
    :dbname => 'movies_db',
    :host => 'localhost')

sql = "INSERT INTO movies (title, year, rated, released, runtime, genre, director, writer, actors, plot) VALUES ('#{params[:title]}', #{params[:year]}, '#{params[:rated]}', '#{params[:released]}', '#{params[:runtime]}', '#{params[:genre]}', '#{params[:director]}', '#{params[:writer]}', '#{params[:actors]}', '#{params[:plot]}')"

# response = db_connection.exec(sql)
# response.entries

db_connection.close
redirect to '/'
end



