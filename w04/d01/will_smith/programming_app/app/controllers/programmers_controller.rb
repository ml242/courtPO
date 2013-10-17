class ProgrammersController < ApplicationController

  def index
    @programmers = Programmer.all
  end

  def show
    id = params[:id]
    programmer = Programmer.find(id)
    @name = programmer['name']
    @twitter_username = programmer['twitter_username']
    @twitter_pic = programmer['twitter_pic']
  end


end

