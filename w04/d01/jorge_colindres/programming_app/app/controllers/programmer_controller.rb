class ProgrammerController < ApplicationController

  def index
    @all_programmers = Programmer.all
  end

  def individual
    @id = params[:id]

    programmer = Programmer.find @id

    @name = programmer.name
    @twitter_username = programmer.twitter_username
    @twitter_pic = programmer.twitter_pic
    @github_username = programmer.github_username
  end

  def new
  end

  def create
    id = params[:id]
    name = params[:name]
    twitter_username = params[:twitter_username]
    twitter_pic = params[:twitter_pic]
    github_username = params[:github_username]

    programmer = Programmer.create :name => name, :twitter_username => twitter_username, :twitter_pic => twitter_pic, :github_username => github_username
    id = programmer.id

    redirect_to "/programmers/#{id}"
  end

  def edit
    @id = params[:id]

    programmer = Programmer.find @id

    @name = programmer.name
    @twitter_username = programmer.twitter_username
    @twitter_pic = programmer.twitter_pic
    @github_username = programmer.github_username
  end

  def update
    id = params[:id]
    name = params[:name]
    twitter_username = params[:twitter_username]
    twitter_pic = params[:twitter_pic]
    github_username = params[:github_username]

    programmer = Programmer.find id

    programmer.name = name
    programmer.twitter_username = twitter_username
    programmer.twitter_pic = twitter_pic
    programmer.github_username = github_username
    programmer.save

    redirect_to "/programmers/#{id}"
  end

  def destroy
    id = params[:id]

    programmer = Programmer.find id
    programmer.delete

    redirect_to "/programmers"
  end

end
