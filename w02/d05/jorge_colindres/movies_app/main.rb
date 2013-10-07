require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require 'cgi'

require 'pry'
require 'pry-nav'
require 'pry-remote'


get '/' do
  erb :index
end

get '/search' do
  search = params[:q]
  response = HTTParty.get("http://www.omdbapi.com/?s=#{CGI::escape(search)}")
  parsed_result = JSON.parse(response)
  @search_results = parsed_result["Search"]
  if @search_results.nil?
    @search_results = "No results found."
  end
  erb :index
end

get '/:imdbID' do
  movieID = params[:imdbID]
  response = HTTParty.get("http://www.omdbapi.com/?i=#{movieID}")
  parsed_result = JSON.parse(response)
  @movie = parsed_result
  erb :index
end

