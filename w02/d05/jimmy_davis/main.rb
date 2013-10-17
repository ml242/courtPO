# encoding: utf-8
require 'sinatra'
require 'sinatra/reloader' if development?
# debugging
require 'pry'
require 'rainbow'
require 'json'
require 'httparty'
require 'CGI'

get '/' do
  erb :index
end


get '/:movie_title' do
  movie_title = params[:movie_title]
  url = "http://www.omdbapi.com/?s=#{movie_title}"
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)
  search_results = parsed_result["Search"]
  @title = search_results["Title"]
  @year = search_results["Year"]
  erb :movie
end

get '/:imdbid' do
  movieid= params[:imdbID]
  movie_title = CGI::escape(movie_title)
  url = "http://www.omdbapi.com/?i=#{movieid}"
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)
  imdbid = parsed_result["Search"["imdbID"]]
  result = parsed_result["Search"][0]
  imdbid = result["imdbid"]

  @imdbid = imdbid
  erb :imdb
end