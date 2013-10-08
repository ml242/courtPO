require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require 'pry'

def json_party(url)
  response = HTTParty.get(url)
  JSON.parse(response)
end

def db_query(sql)
  db_conn = PG.connect(:host => 'localhost',
                       :dbname => 'movie_db',
                       :user => 'postgres',
                       :password => 'home3232'
                      )
  res = db_conn.exec(sql)
  db_conn.close()
  res
end

get "/" do  # SEARCH FORM 
  erb :index
end

get "/movies/search" do

  query = params[:title].gsub(" ","+")
  response = json_party("http://www.omdbapi.com/?s=#{query}")

  unless response.has_key? "Search" # IN CASE THERE ARE NO RESULTS! 
    erb :nores 
  else
    @results =  response["Search"]
    erb :search
  end
end

post "/movies/:id/delete" do
  imdb_id = params[:imdb_id]
  db_query( "DELETE FROM movies WHERE imdb_id = '#{imdb_id}'" )
  redirect "/movies"
end

get "/movies/:id" do
  @imdbid = params[:id]
  results = json_party("http://www.omdbapi.com/?i=#{@imdbid}")
  @results = {:title => results["Title"],
              :year => results["Year"],
              :actors => results["Actors"],
              :plot => results["Plot"],
              :director => results["Director"],
              :genre => results["Genre"],
              :imdb_rating => results["imdbRating"],
              :released => results["Released"],
              :runtime => results["Runtime"],
              :poster => results["Poster"],
              :imdb_id => results["imdbID"]
  }
  @img_url = @results[:poster]
  @img_url = "../images/sadface.png" if @results[:poster]=="N/A" 

  res = db_query( "SELECT imdb_id FROM movies" )
  imdb_ids = res.entries.map {|mov| mov["imdb_id"]}

  @stored = false
  @stored = true if imdb_ids.include?(@results[:imdb_id]) 

  erb :display
end

post "/movies" do
  db_query( "INSERT INTO movies (imdb_id) VALUES ('#{params[:imdb_id]}')")
  redirect "/movies"
end

get "/movies" do
  res = db_query( "SELECT imdb_id FROM movies" )
  imdb_ids = res.entries.map { |entry| entry["imdb_id"] }
  @movies = imdb_ids.map do |imdb_id|
    json_party("http://www.omdbapi.com/?i=#{imdb_id}")
  end
  erb :movies
end
