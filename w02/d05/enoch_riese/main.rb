require "sinatra"
require "sinatra/reloader"
require "json"
require "HTTParty"

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
