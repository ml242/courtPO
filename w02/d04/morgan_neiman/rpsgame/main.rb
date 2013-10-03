require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'game'

play_options = ["rock", "paper", "scissors"]

get '/single_player' do
  erb :single_player
end

get '/result' do
  @user_choice = params[:choice]
  if @user_choice != nil
    @user_choice.downcase!
  end
  @comp_choice = play_options.sample
  @outcome = game(@user_choice, @comp_choice)
  erb :result
end