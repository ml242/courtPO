class ProgrammerController < ApplicationController

  def index
    @all_programmers = Programmer.all
  end

  def individual
    id = params[:id]

    programmer = Programmer.find id

    @name = programmer.name
    @twitter_username = programmer.twitter_username
    @twitter_pic = programmer.twitter_pic
    @github_username = programmer.github_username
  end

end
