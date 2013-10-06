require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'pry'

url = "http://www.omdbapi.com/?t=True%20Grit&y=1969"

get '/' do
    erb :movies
end

