require 'sinatra'
require 'sinatra/reloader'

get '/' do
    @user_choice = params[:choice]
    @comp_choice = ["rock", "paper", "scissors"].sample
    case
      when @user_choice == @comp_choice
        @output = "tie"
      when @user_choice == "rock" && @comp_choice == "scissors"
        @output = "You Win!"
      when @user_choice == "paper" && @comp_choice == "rock"
        @output = "You Win!"
      when @user_choice == "scissors" && @comp_choice == "paper"
        @output = "You Win!"
      when @user_choice == "scissors" && @comp_choice == "rock"
        @output = "You lose, dude!"
      when @user_choice == "rock" && @comp_choice == "paper"
        @output = "You have lost, again!"
      when @user_choice == "paper" && @comp_choice == "scissors"
        @output = "Those scissors cut you, you lose!"
      else
        @output = "I dare you to defeat me!"
    end
    erb :index
end
