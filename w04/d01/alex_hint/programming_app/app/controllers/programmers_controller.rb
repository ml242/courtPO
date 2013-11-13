class ProgrammersController < ApplicationController

  def index
    @programmers = Programmer.all
  end

  def single_programmer
    id = params[:id]
    @programmer = Programmer.find(id)
  end

  def edit
    id = params[:id]
    @programmer = Programmer.find(id)
  end

  def update
    id = params[:id]
    programmer = Programmer.find(id)
    programmer.name = params[:name]
    programmer.twitter_username = params[:twitter_username]
    programmer.twitter_pic = params[:twitter_pic]
    programmer.save
    redirect_to("/programmers/#{id}")
  end
end