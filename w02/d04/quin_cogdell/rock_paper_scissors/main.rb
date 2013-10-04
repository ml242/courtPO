require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/' do
  erb :index
end

get '/play' do
  @player_name = params[:player_name_input]
  erb :play
end

get '/results' do
  @player_selection = params[:player_selection_input]
  erb :results
end