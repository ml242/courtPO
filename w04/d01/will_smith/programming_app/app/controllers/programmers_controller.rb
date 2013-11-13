class ProgrammersController < ApplicationController

  def index
    @programmers = Programmer.all
  end

  def show
    id = params[:id]
    @programmer = Programmer.find(id)
  end

  def edit
    id = params[:id]
    @programmer = Programmer.find(id)

    # render :text => "this will bring up a form to edit the information of programmer #{id}"
  end

  def update
    id = params[:id]
    programmer = Programmer.find(id)
    programmer.name = params[:name]
    programmer.twitter_username = params[:twitter_username]
    programmer.twitter_pic = params[:twitter_pic]
    programmer.github_username = params[:github_username]
    programmer.save
    redirect_to("/programmers/#{id}")
  end

end

