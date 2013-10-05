# encoding: utf-8
require 'sinatra'
require 'sinatra/reloader' if development?
# debugging
require 'pry'
require 'rainbow'
require 'HTTParty'

get '/' do
  erb :index
end

get '/movies/search' do
  movie_name = params[:t]
  if movie_name.split(' ').length > 1
    movie_name_array = movie_name.split(' ')
    movie_name = ""
    movie_name_array.each do |word|
      movie_name += word + "+"
    end
  else
    movie_name = params[:t]
  end
  $movie_name = movie_name
  response = HTTParty.get("http://www.omdbapi.com/?s=" + movie_name + "&r=XML")
  if response != nil
    @movie_array = response["root"]["Movie"]
  else
    @movie_array = ["Sorry, no movies matched that title."]
  end
  erb :results

end

get '/movies/:id' do
  id = params[:id]
  response = HTTParty.get("http://www.omdbapi.com/?i=" +  id + "&r=XML")
  if response != nil
    @name = response["root"]["movie"]["title"]
    @year = response["root"]["movie"]["year"]
    @rating = response["root"]["movie"]["rated"]
    @released = response["root"]["movie"]["released"]
    @genre = response["root"]["movie"]["genre"]
    @runtime = response["root"]["movie"]["runtime"]
    @director = response["root"]["movie"]["director"]
    @writer = response["root"]["movie"]["writer"]
    @actors = response["root"]["movie"]["actors"]
    @plot = response["root"]["movie"]["plot"]
    if response["root"]["movie"]["poster"] != "N/A"
     @poster = response["root"]["movie"]["poster"]
    else
      @poster = "http://www.findingbetteragencies.com/wp-content/uploads/HomerSimpsonDoh.png"
    end
   @isfull = true
 else
  @isfull = false
end
@search = "http://www.google.com/search?q=" + $movie_name
erb :id_results
end
