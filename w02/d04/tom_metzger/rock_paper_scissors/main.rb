require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'


get '/index' do
  erb :index
end


get '/play_game' do
  @options = [
    "rock",
    "paper",
    "scissors"
    ]
  @choice = params[:choice]
  @computer_selection = @options.sample
  erb :play_game
end



