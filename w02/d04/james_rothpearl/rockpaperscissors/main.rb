require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  @user_choice = params[:choice]
  @computer_choice = ["rock", "paper", "scissor"].sample
  case
    when @user_choice == @computer_choice
      @output = "TIE"
    when @user_choice == "rock" && @computer_choice == "scissor"
      @output = "WIN"
    when @user_choice == "paper" && @computer_choice == "rock"
      @output = "WIN"
    when @user_choice == "scissor" && @computer_choice == "paper"
      @output = "WIN"
    else
      @output = "LOSE"
  end

  erb :rps
end





