require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'game'

play_options = ["rock", "paper", "scissors"]

get '/single_player' do
  erb :single_player
end


get '/result' do
  @second_choice = params[:choice2]
  if @second_choice == nil
    @user_choice = params[:choice]
    if @user_choice != nil
      @user_choice.downcase!
    end
    @second_choice = play_options.sample
    @player2 = "The computer"
  else
    @user_choice = $user_choice
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

get '/multi_player2' do
  $user_choice = params[:choice]
  erb :multi_player2
end