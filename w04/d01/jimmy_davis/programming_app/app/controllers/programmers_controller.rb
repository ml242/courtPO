class ProgrammersController < ApplicationController

  def index
  end

  def all
    @programmers = Programmer.all
  end

  def single
    id = params[:id]
    programmer = Programmer.find(id)
    @name = programmer.name
    @username = programmer.twitter_username
    @pic = programmer.twitter_pic
  end

end
