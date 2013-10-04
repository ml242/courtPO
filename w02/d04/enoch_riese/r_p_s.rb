require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get "/" do
  @comp = ["rock", "paper", "scissor"].sample
  @player = params[:r_p_s]
  if @player == "rock"
    @win = "win" if @comp == "scissor"
    @win = "tied" if @comp == "rock"
    @win = "lose" if @comp == "paper"
  elsif @player == "paper"
    @win = "win" if @comp == "rock"
    @win = "tied" if @comp == "paper"
    @win = "lose" if @comp == "scissor"
  elsif @player == "scissor"
    @win = "win" if @comp == "rock"
    @win = "tied" if @comp == "scissor"
    @win = "lose" if @comp == "paper"
  end
  erb :game_front
end