require 'sinatra'
require 'sinatra/reloader' if development?


get '/' do
    erb :game
end


get '/game' do
    @choice = params[:choice]
    @comp = ["rock", "paper", "scissors"].shuffle.sample
    erb :game
end