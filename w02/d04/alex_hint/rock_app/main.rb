require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  @text = 'Hi!'

  @user_choice = params[:choice]

  @my_choice = ["rock", "paper", "scissors"].sample

  case
  when @my_choice == @user_choice
    @output = "Draw!"
  when @my_choice == "rock" && @user_choice == "scissors"
    @output = "I Win!"
  when @my_choice == "paper" && @user_choice == "rock"
    @output = "I Win!"
  when @my_choice == "scissors" && @user_choice == "paper"
    @output = "I Win!"
  else
    @output = "I Lose!"
  end

  erb :index
end
