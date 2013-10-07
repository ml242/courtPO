require 'sinatra'
require 'sinatra/reloader' if development?


get '/play' do

@user = params[:user]
@computer = ["rock", "paper", "scissors"].sample

if @user.nil?
  @result=""
end

case @computer
  when @user
    @result = "tie"
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

erb :rps

end