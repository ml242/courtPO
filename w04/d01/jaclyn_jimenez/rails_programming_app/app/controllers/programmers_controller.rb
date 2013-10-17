class ProgrammersController < ApplicationController

  #GET '/programmers'
  def index
    @programmers = Programmer.all
  end

  #GET '/programmers/new'
  def new

  end

  #GET '/programmers/:id'
  def show
    id = params[:id]
    @programmer = Programmer.find(id)
  end

  #GET '/programmers/:id/edit'
  def edit
    id = params[:id]
    @programmer = Programmer.find(id)
  end

  #POST '/programmers/:id'
  def update
    id = params[:id]
    name = params[:name]
    twitter_pic = params[:twitter_pic]
    twitter_username = params[:twitter_username]
    p = Programmer.find(id)
    p.name = name
    p.twitter_username = twitter_username
    p.twitter_pic = twitter_pic
    p.save
    redirect_to("/programmers/#{id}")
  end

  #POST '/programmers'
  def create
    name = params[:name]
    twitter_pic = params[:twitter_pic]
    twitter_username = params[:twitter_username]
    p = Programmer.new
    p.name = name
    p.twitter_username = twitter_username
    p.twitter_pic = twitter_pic
    p.save
    redirect_to("/programmers")
  end

end
