require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'rainbow'

computer_answer = ["rock", "paper", "scissors"]

get '/rps' do
  @rps = "Virtual Rock Paper Scissors"
  @guess = params[:guess]
  @computer_answer = computer_answer.sample
  @win_message = "Player 1 Wins!!!"
  @lose_message = "Player 1 Loses!!!"
  @tie_message = "Tie! Play again!!!"
  @image1 = "http://upload.wikimedia.org/wikipedia/commons/a/aa/GabbroRockCreek1.jpg"
  @image2 = "http://t.qkme.me/3q5e2i.jpg"
  @image3 = "http://upload.wikimedia.org/wikipedia/commons/6/66/Scissors.svg"
  @rps_logo = "http://www.clker.com/cliparts/V/0/0/e/T/J/rock-paper-scissor-game-md.png"
  erb :rps
end