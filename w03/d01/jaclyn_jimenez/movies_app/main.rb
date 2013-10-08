require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require 'cgi'
require 'pry'
require 'pg'

get '/' do
  erb :movies
end


get '/movies/search' do
  encoded_title = CGI::escape(params[:q])
  url = "http://www.omdbapi.com/?s=#{encoded_title}"
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)
  @movie_hashes = []

  parsed_result["Search"].each do |movie|
    imdb_id = movie["imdbID"]
    url = "/movies/#{imdb_id}"

    movie_hash = {
    :title => movie["Title"],
    :year => movie["Year"],
    :type => movie["Type"],
    :url => url
    }
    @movie_hashes << movie_hash
  end
  erb :search
end

get '/movies/:id' do
  id = params[:id]
  post_info = "http://www.omdbapi.com/?i=#{id}"
  response = HTTParty.get(post_info)
  @movie_info = JSON.parse(response)

  if @movie_info["Poster"] == "N/A"
    poster_url = nil
  else
    poster_url = @movie_info["Poster"]
  end

  @movie = {
    :title => @movie_info["Title"],
    :year => @movie_info["Year"],
    :parental_rating => @movie_info["Rated"],
    :released => @movie_info["Released"],
    :runtime => @movie_info["Runtime"],
    :genre => @movie_info["Genre"],
    :director => @movie_info["Director"],
    :writer => @movie_info["Writer"],
    :actors => @movie_info["Actors"],
    :plot => @movie_info["Plot"],
    :poster => poster_url,
    :type => @movie_info["Type"],
    :id => id
  }
  erb :id
end

post "/save/:id" do
  id = params[:id]
  post_info = "http://www.omdbapi.com/?i=#{id}"
  response = HTTParty.get(post_info)
  @movie_info = JSON.parse(response)
  db_connection = PG.connect(
    :dbname => 'movies_db',
    :host => 'localhost')
  sql = "INSERT INTO movies (title, year, type, genre, runtime,
         release_date, director, writer, actors, plot)
        VALUES ('#{@movie_info["Title"]}', #{@movie_info["Year"]},
        '#{@movie_info["Type"]}', '#{@movie_info["Genre"]}',
          '#{@movie_info["Runtime"]}', '#{@movie_info["Released"]}',
          '#{@movie_info["Director"]}', '#{@movie_info["Writer"]}',
          '#{@movie_info["Actors"]}', '#{@movie_info["Plot"]}' )"
  response = db_connection.exec(sql)
  db_connection.close
  redirect to("/faves")
end

get '/faves' do
  db_connection = PG.connect(
    :dbname => 'movies_db',
    :host => 'localhost')
  sql = "SELECT * FROM movies"
  response = db_connection.exec(sql)
  db_connection.close
  response.entries.to_s
end
