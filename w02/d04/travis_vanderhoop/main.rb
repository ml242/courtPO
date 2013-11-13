require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  @user_choice = 0
  @comp_choice = ['rock', 'paper', 'scissors'].sample
  @user_choice = params[:user_choice]
erb :rps
end




