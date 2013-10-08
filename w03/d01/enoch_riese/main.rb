require "sinatra"
require "sinatra/reloader"
require "json"
require "HTTParty"
require "PG"
require "pry"

get "/" do
  @header = "Search by Title"
  erb :index
end

get "/movies/search" do
  erb :search
end

post "/movies/search" do
  @header = "Results"
  if params[:title] != nil
    title = params[:title].gsub(" ", "%20")
    response = HTTParty.get("http://www.omdbapi.com/?s=#{title}")
    parsed_result = JSON.parse(response.body)
    result = parsed_result["Search"]
    @display = result
  end
  erb :search
end

get "/movies/:imdbID" do
  movie = params[:imdbID]
  response = HTTParty.get("http://www.omdbapi.com/?i=#{movie}")
  @parsed_result = JSON.parse(response.body)
  @title = @parsed_result["Title"]
  @poster = @parsed_result["Poster"]
  @parsed_result.delete("imdbID")
  @parsed_result.delete("imdbVotes")
  @parsed_result.delete("imdbRating")
  @parsed_result.delete("Type")
  @parsed_result.delete("Response")
  @parsed_result.delete("Poster")
  erb :result
end

post "/movies/:imdbID" do
  movie = params[:imdbID]
  response = HTTParty.get("http://www.omdbapi.com/?i=#{movie}")
  @parsed_result = JSON.parse(response.body)
  title = @parsed_result["Title"].delete('\'')
  poster = @parsed_result["Poster"]
  year = @parsed_result["Year"]
  rated = @parsed_result["Rated"].delete('\'')
  released = @parsed_result["Released"].delete('\'')
  runtime = @parsed_result["Runtime"].delete('\'')
  genre = @parsed_result["Genre"].delete('\'')
  writer = @parsed_result["Writer"].delete('\'')
  actors = @parsed_result["Actors"].delete('\'')
  plot = @parsed_result["Plot"].delete('\'')
  db_connection = PG.connect(:dbname => 'movies_db', :host => 'localhost')
  sql = "INSERT INTO movies (title, year, rated, released, runtime, genre, writer, actors, plot, poster) VALUES ('#{title}', #{year}, '#{rated}', '#{released}', '#{runtime}', '#{genre}', '#{writer}', '#{actors}', '#{plot}', '#{poster}');"
  db_connection.exec(sql)
  db_connection.close
  redirect to "/movies/#{movie}"
end

get "/favorites" do
  db_connection = PG.connect(:dbname => 'movies_db', :host => 'localhost')
  sql = "SELECT * FROM movies"
  response = db_connection.exec(sql)
  db_connection.close
  @movies = response.entries
  erb :favorites
end
