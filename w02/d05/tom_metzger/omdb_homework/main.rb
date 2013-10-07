require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

require 'json'
require 'httparty'

@titles = []
@id = []

@attributes = ["Title", "Year", "Rated", "Released", "Runtime", "Genre", "Director", "Writer", "Actors", "Plot"]



get '/' do
  erb :movies
end


get '/movies' do
  title = params[:query]
  result = HTTParty.get("http://www.omdbapi.com/?s=#{title}")
  parsed_result = JSON.parse(result.body)
  @parsed = parsed_result["Search"]
  # binding.pry
  # @parsed.each {|movie| @titles << movie["Title"]}
  # @parsed.each {|movie| @id << movie["imdbID"]}
  erb :movies
end



get '/search' do
  @movie = params[:i]
  if @movie["Poster"] = String
    @poster =
  # erb :results
end



