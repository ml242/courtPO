require 'sinatra'
require 'sinatra/reloader' if development?

OPTIONS = ["rock","paper","scissor"]

def find_result(input, auto)
  case
  when input == auto
    "Tie. Maybe you'll win next time"
  when input == "rock" && auto =="scissor"
    "You win!"
  when input == "rock" && auto =="paper"
    "You lose!"
  when input == "scissor" && auto=="paper"
    "You win!"
  when input =="scissor" && auto=="rock"
    "You lose!"
  when input=="paper" && auto=="rock"
    "You win!"
  when input=="paper" && auto=="scissor"
    "You lose!"
  else
    "Did you input your choice correctly (No plurals)?"
   end
  end

  get '/' do
    erb :index
  end

  get '/results' do
    @input_choice=params[:choice]
    @our_choice=OPTIONS.sample
    @game_result = find_result(@input_choice,@our_choice)
    erb :results
  end