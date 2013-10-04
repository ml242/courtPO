require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
computer_input = ["rock", "paper", "scissor"]
@computer_choice = computer_input.sample
@user_choice = params[:input]
  erb :rock_paper_scissor
end