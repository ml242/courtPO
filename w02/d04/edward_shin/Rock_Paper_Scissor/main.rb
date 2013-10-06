require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb :home
end

get '/about' do
  @about_image = "http://www.ankeshkothari.com/wp-content/uploads/rock-paper-scissors.gif"
erb :about
end

get '/play' do
@comp = ["rock", "paper", "scissor"].sample
@user = params[:choice]

if @user == "rock" && @comp =="scissor"
  @results = "Congratulations, you win!"

elsif  @user == "paper" && @comp == "rock"
  @results = "Congratulations, you win!"

elsif @user == "scissor" && @comp == "paper"
  @results = "Congratulations, you win!"
elsif @comp == @user
  @results = "It's a tie!"
else
  @results ="Sorry, you lost"
end

erb :play
end