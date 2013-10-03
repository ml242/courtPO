require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'game'

play_options = ["rock", "paper", "scissors"]

get '/single_player' do
  erb :single_player
end

get '/result' do
  @user_choice = params[:choice]
  @second_choice = params[:choice2]
  if @user_choice != nil
    @user_choice.downcase!
  end
  if @second_choice == nil
  @second_choice = play_options.sample
  @player2 = "The computer"
  else
    @second_choice.downcase!
    @player2 = "Player 2"
  end

  @outcome = game(@user_choice, @second_choice)
  if @outcome == nil
    @outcome = "You chose a fake thing. You suck."
  end
  erb :result
end

get '/multi_player' do
  erb :multi_player
end