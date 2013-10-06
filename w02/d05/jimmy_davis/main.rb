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

# from matt:
# get '/:movie_title' do
#   movie_title = params[:movie_title]
#   movie_title = CGI::escape(movie_title)
#   url = ("http://www.omdbapi.com/?s=")
#   result = HTTParty.get(url+movie_title)
#   parsed_result = JSON.parse(result.body)
#   results = parsed_result
#   movie_list1 = []
#   results["Search"].each do |movie|
#     movie_list1 << movie["Title"]
#     @movie_list1 = movie_list1
#   end
#     erb :movie
# end


get '/:movie_title' do
  movie_title = params[:movie_title]
  movie_title = CGI::escape(movie_title)
  url = "http://www.omdbapi.com/?s=#{movie_title}"
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response.body)
  # movie_list = []
  # title = parsed_result["Search"][0]["Title"]
  # year = parsed_result["Search"][0]["Year"]
  result = parsed_result["Search"][0]
  title = result["Title"]
  year = result["Year"]
  @title = title
  @year = year
  erb :movie
end

# get 'movie/:imdbid' do
#   imdid = params[:imdbID]
#   url = url = "http://www.omdbapi.com/?s=#{movie_title}"
#   response = HTTparty.get(url)
#   parsed_result = JSON.parse(response.body)
#   @imdbid = "www.imdb.com/title/#{imdbid}"
# end