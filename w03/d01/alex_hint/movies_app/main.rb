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
  poster_url = "Search Google" if poster_url == "N/A"

  #{"Title"=>"Dexter", "Year"=>"2006", "Rated"=>"TV-MA", "Released"=>"01 Oct 2006", "Runtime"=>"1 h", "Genre"=>"Crime, Drama, Mystery, Thriller", "Director"=>"N/A", "Writer"=>"N/A", "Actors"=>"Michael C. Hall, Jennifer Carpenter, David Zayas, James Remar", "Plot"=>"A Miami police forensics expert moonlights as a serial killer of criminals who he believes have escaped justice.", "Poster"=>"http://ia.media-imdb.com/images/M/MV5BMTM5MjkwMTI0MV5BMl5BanBnXkFtZTcwODQwMTc0OQ@@._V1_SX300.jpg", "imdbRating"=>"9.0", "imdbVotes"=>"233,232", "imdbID"=>"tt0773262", "Type"=>"series", "Response"=>"True"}
  #Show the movie's Year, Rated, Released, Runtime, Genre, Director, Writer, Actors and Plot
  @movie = {
    :title => response["Title"],
    :year => response["Year"],
    :genre => response["Genre"],
    :poster => poster_url,
    :rated => response["Rated"],
    :released => response["Released"],
    :runtime => response["Runtime"],
    :genre => response["Genre"],
    :director => response["Director"],
    :writer => response["Writer"],
    :actors => response["Actors"],
    :plot => response["Plot"]
  }
  p response

  erb :movie
end

post "/favorites" do
  # title
  # year
  # genre
  # rated
  # released
  # runtime
  # director
  # writer
  # actors
  # plot
  title = params[:title]
  year = params[:year]
  genre = params[:genre]
  rated = params[:rated]
  released = params[:released]
  runtime = params[:runtime]
  director = params[:director]
  writer = params[:writer]
  actors = params[:actors]
  plot = params[:plot]

  # "hello".gsub(/[aeiou]/, '*') -- will replace with *

  #res = conn.exec_params('SELECT $1 AS a, $2 AS b, $3 AS c', [1, 2, nil])

  db_connection = PG.connect(:dbname => 'movies_db', :host => 'localhost')

  plot = db_connection.escape(plot)
  sql = "INSERT INTO movies (title, year, genre, rated, released, runtime, director, writer, actors, plot) VALUES ('#{title}', #{year}, '#{genre}', '#{rated}', '#{released}', '#{runtime}', '#{director}', '#{writer}', '#{actors}', '#{plot}')"
  db_connection.exec(sql)
  db_connection.close

  redirect to('/favorites')
end


get '/favorites' do

  db_connection = PG.connect(:dbname => 'movies_db', :host => 'localhost')
  sql = "SELECT * FROM movies"
  response = db_connection.exec(sql)
  db_connection.close

  # response_parsed = JSON.parse(response)

  @movies_array = response.entries

  erb :favorites
end






