require 'sinatra'
require 'sinatra/reloader.rb' if development?
require 'pry'
require 'cgi'
require 'json'
require 'httparty'
require('pg')


# Initiate a connection to the database.
# New Route for a Favorites page near li60
# New route /favorites/



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
  poster_url = "Search Google" if poster_url == "N/A"

  @movie = {
    :title => response["Title"],
    :year => response["Year"],
    :genre => response["Genre"],
    :poster => poster_url
  }
  # add save button to the movie detail page
  erb :movie
  end

  get '/favorites/' do
    db_connection = PG.connect( :dbname => 'movies_db', :host => 'localhost' )
    sql = "SELECT * FROM movies"
    response = db_connection.exec(sql)
    puts response.entries.size
    db_connection.close
    @sql = sql
    erb :favorites
  end



#Fave Save button On-click route to '/'my_favorites from result detail

