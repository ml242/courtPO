require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/play' do

@user = params[:user]

@computer = ["rock", "paper", "scissors"].sample

case @computer
  when @user then puts "there's a tie"
  when "rock"
    if @user == "paper"
      @result = "defeat"
    else
      @result = "victory"
    end
  when "paper"
    if @user == "scissors"
      @result = "defeat"
    else
      @result = "victory"
    end
  when "scissors"
    if @user == "rock"
      @result = "defeat"
    else
      @result = "victory"
    end
end
binding.pry
p @result

  erb :rps

end