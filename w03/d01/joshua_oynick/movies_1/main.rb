require 'sinatra'
require 'sinatra/reloader.rb' if development?
require 'pry'
require 'httparty'
require 'json'
require 'cgi'
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
  poster_url = nil if poster_url == "N/A"

  @movie = {
    :title => response["Title"],
    :year => response["Year"],
    :genre => response["Genre"],
    :poster => response["Poster"]
  }

  erb :movie
end

post "/movies/faves" do

  db_connection = PG.connect(
    :dbname => 'movies_db',
    :host => 'localhost')

  # check the size
  sql = "INSERT INTO movies (title, year, genre) VALUES ('#{params['title']}', #{params[year]}, '#{params['genre']}')"
  db_connection.exec(sql)
  sql = "SELECT * FROM movies"
  response = db_connection.exec(sql)
  db_connection.close
  redirect to ("/")
end


get "/movies/faves" do
  erb :faves
end



