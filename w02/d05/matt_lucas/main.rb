# encoding: utf-8
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'rainbow'
require 'json'
require 'HTTParty'
require 'CGI'
# parsed_result = JSON.parse(response)

get '/' do
  erb :index
end

# get '/results' do
#   query = params[:query]
#   movie_title = escapeHTML(query)
#   url = ("http://www.omdbapi.com/?t=")
#   result = HTTParty.get(url+movie_title)
#   parsed_result = JSON.parse(result.body)
#   @results = parsed_result
#   erb :results
# end

get '/results' do
  query = params[:query]
  movie_title = CGI::escape(query)
  url = ("http://www.omdbapi.com/?s=")
  result = HTTParty.get(url+movie_title)
  parsed_result = JSON.parse(result.body)
  results = parsed_result
  movie_list1 = []
  id_list1 = []
  year_list1 = []
  detailed_result_arr = {}
  poster_arr = {}
  results["Search"].each do |movie|
    movie_list1 << movie["Title"]
    @movie_list1 = movie_list1
  end
  results["Search"].each do |movie|
    id_list1 << movie["imdbID"]
    @id_list1 = id_list1
  end
  results["Search"].each do |movie|
    year_list1 << movie["Year"]
    @year_list1 = year_list1
  end
  # # this line should start to retrieve the info from API
  # id_list1.each { |x| }
  #   puts imdbID
  #   detail_url = ("http://www.omdbapi.com/?i=#{imdbID}&t=")
  #   detail_get = HTTParty.get(detail_url)
  #   detailed_result = JSON.parse(detailed_get.body)
  #   detailed_result_arr << detailed_result
  # end
  # detailed_result_arr["Search"].each do |poster|
  #   poster_arr << movie["Poster"]
  #   @det_poster_arr = poster_arr
  # end
  erb :results2
end

# get 'movies/:id' do
#   @id = :id
#   post_info = "http://www.omdbapi.com/?i=#{@id}"
#   response = HTTPparty.get(post_info)
#   parsed_result = JSON.parse(response)
#   @director = parsed_result["Director"]
#   "#{@director} is the director"
# end



# get '/results' do
#   query = params[:query]
#   movie_title = query.gsub(/\s+/, "")
#   url = ("http://www.omdbapi.com/?s=")
#   result = HTTParty.get(url+movie_title)
#   parsed_result = JSON.parse(result.body)

# end

get '/movies/' do
  erb :movies
end