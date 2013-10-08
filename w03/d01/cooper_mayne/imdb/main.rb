require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require 'pry'

get "/" do  # SEARCH FORM 
  erb :index
end

get "/movies/search" do
  # DISPLAY ALL THE TITLES THAT MATCH THEIR SEARCH
  # MAKE THEM INTO LINKS WHICH GO TO FULL INFO ON THAT MOVIE

  query = params[:title].gsub(" ","+")
  response = HTTParty.get("http://www.omdbapi.com/?s=#{query}")
  r = JSON.parse(response)

  unless r.has_key? "Search" # IN CASE THERE ARE NO RESULTS! 
    erb :nores 
  else
    @results =  r["Search"]
    erb :search
  end
end

get "/movies/:id" do
  @imdbid = params[:id]
  response = HTTParty.get("http://www.omdbapi.com/?i=#{@imdbid}")
  results = JSON.parse(response)
  l = %w(Title Year Actors Plot Director Genre imdbRating Released Runtime imdbRating Poster)
  @results = results.select { |result| l.include? result }
  erb :display
end

post "/movies" do
  db_conn = PG.connect(:host => 'localhost',
                       :dbname => 'movie_db',
                       :user => 'postgres',
                       :password => 'home3232'
                      )
  sql = "INSERT INTO movies (imdb_id) VALUES ('#{params[:imdb_id]}')"
  
  db_conn.exec(sql)
  redirect "/movies"
  db_conn.close
end

get "/movies" do
  #show saved movies
  db_conn = PG.connect(:host => 'localhost',
                       :dbname => 'movie_db',
                       :user => 'postgres',
                       :password => 'home3232'
                      )
  sql = "SELECT imdb_id FROM movies"
  res = db_conn.exec(sql)
  #p res.entries.to_s
  imdb_ids = []
  res.entries.each { |entry| imdb_ids << entry["imdb_id"] }
  db_conn.close
  @movies = []
  imdb_ids.each do |imdb_id|
    response = HTTParty.get("http://www.omdbapi.com/?i=#{imdb_id}")
    r = JSON.parse(response)
    @movies << r
  end
  @movies
  erb :movies
end
