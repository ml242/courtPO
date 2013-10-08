require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb :index
end

get '/play' do
  @enemy = ["rock", "paper", "scissors"]
  @enemy_choice = @enemy.sample
  @input = params[:input]
  @win = "#{@input} beats #{@enemy_choice}. You win!"
  @lose = "#{@enemy_choice} beats #{@input}. You lose!"
  erb :play
end
