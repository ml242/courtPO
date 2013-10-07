require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'pry'
require 'json'


#parsed_result = JSON.parse(response)
#redirect to('/movies/search')

helpers do

def link_to(url,text=url,opts={})
  attributes = ""
  opts.each { |key,value| attributes << key.to_s << "=\"" << value << "\" "}
  "<a href=\"#{url}\" #{attributes}>#{text}</a>"
end

end




get '/movies' do

  erb :movies
end

get '/movies/search' do

  @movie_search_input = params[:movie_search_input]

  response = HTTParty.get("http://www.omdbapi.com/?s=#{@movie_search_input}&r=json")
  #p response

  parsed_result = JSON.parse(response)
  #p parsed_result
  #JSON.parse(value)

  @response_array = parsed_result["Search"]
  p @response_array

  # @length_response_array = @response_array.length
  # p @length_response_array

  erb :movies_search
end

get '/movies/:id' do

  imdbID= params[:id]
  url = "http://www.omdbapi.com/?i=#{imdbID}"
  response =  HTTParty.get(url)
  @movie = JSON.parse(response)

  @this_title = @movie["Title"]
  @this_year = @movie["Year"]
  @this_id = @movie["imdbID"]
  @this_type = @movie["Type"]


  erb :movies_id
end










