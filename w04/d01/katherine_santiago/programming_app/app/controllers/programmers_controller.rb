class ProgrammersController < ApplicationController

  def index
    @profiles = Programmer.all
  end

  def show
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
  programmer.github = params[:github]
  programmer.save
  redirect_to("/programmers/#{id}")
end

  def delete
    id = params[:id]
    @programmer = Programmer.delete(id)
  end

end
