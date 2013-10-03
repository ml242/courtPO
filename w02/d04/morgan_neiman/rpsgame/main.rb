require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'game'

play_options = ["rock", "paper", "scissors"]

get '/single_player' do
  @user_choice = params[:choice].downcase
  @comp_choice = play_options.sample
  @outcome = game(@user_choice, @comp_choice)
  erb :single_player
end