require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'pry'
require 'json'

# Create a single page Sinatra app that queries the Open Movies DB API by movie title
get '/' do
    erb :index
end

get '/movies' do
    erb :movies
end

# When a user submits the search form, redirect them to localhost:4567/movies/search and display the list of returned movie titles
get "/movies/search" do
    movie_title = params[:movie]
         if movie_title.split(' ').length > 1
            movie_title_array = movie_title.split(' ')
            movie_title = ""
            movie_title_array.each do |word|
              movie_title += word + "+"
        end
        else
        movie_title = params[:movie]
        end
    url = "http://www.omdbapi.com/?i=&t=#{movie_title}"
    response = HTTParty.get(url)
    p response.to_s
end

