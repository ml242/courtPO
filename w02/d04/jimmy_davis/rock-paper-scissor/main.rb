require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
computer_input = ["rock", "paper", "scissors"]
@computer_choice = computer_input.sample
@user_choice = params[:input]
@win_image = "http://southbaltimorecf.com/wp-content/uploads/2012/09/you-win.jpg"
@lose_image = "http://sd.keepcalm-o-matic.co.uk/i/keep-calm-you-just-lost-the-game-4.png"
@tie_image = "http://mrboom.mumblecore.org/draw.gif"
  erb :rock_paper_scissor
end