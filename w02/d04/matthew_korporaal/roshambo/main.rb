require 'sinatra'
require 'sinatra/reloader' if development?
require 'rainbow'

get '/' do
  @text = "Rock, Paper, Magnum. Go ahead, make my "
  @click = "day..."
  @image_url = "img/harry.jpg"
  erb :index
end

get '/roshambo' do
  @heading = "ROCK, PAPER, SCISSOR. GO!!!"
  # Make computer and user pick variables
  @comp_pick = ["rock", "paper", "scissor"].sample
  @user_pick = @params[:rps].to_s
  # win/tie/lose logic
  if @user_pick == @comp_pick
    @result = "tie"
  elsif @user_pick == "rock" && @comp_pick == "scissor"
    @result = "win"
  elsif @user_pick == "rock" && @comp_pick == "paper"
    @result = "lose"
  elsif @user_pick == "paper" && @comp_pick == "scissor"
    @result = "win"
  elsif @user_pick == "paper" && @comp_pick == "rock"
    @result = "win"
  elsif @user_pick == "scissor" && @comp_pick == "paper"
    @result = "win"
  elsif @user_pick == "scissor" && @comp_pick == "rock"
    @result = "lose"
  end
  erb :roshambo
end