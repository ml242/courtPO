require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'httparty'
require 'json'

url = "http://www.omdbapi.com/?t=Rambo"
#parsed_result = JSON.parse(response)

get '/' do
  response = HTTParty.get("http://graph.facebook.com/quincogdell")
  first_name = response['first_name']
  first_name
  #erb :index
end

get '/movies/search' do
  response = HTTParty.get(url)
  parsed_result = JSON.parse(response)
  @results = parsed_result.to_s
  erb :results
end

