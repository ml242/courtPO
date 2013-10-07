require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'pry'
require 'json'


get "/" do
    erb :movies
end

get "/movies/search" do
    title = title
     url="http://www.omdbapi.com/?i=#{title}&y=#{year}"
     response = HTTParty.get(url)
     parsed_result = JSON.parse(response.body)
     search_hash = response["Search"]
     title = []
     title = search_hash["Search"]["Title"]
     "#{title}"
 end


