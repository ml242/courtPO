class ProgrammersController < ApplicationController

  def index
    @results = Programmer.all
  end

  def new
  end

  def show
    @results = Programmer.find(params[:id])
  end

  def edit
    @results = Programmer.find(params[:id])
  end



  def update
    id = params[:id]
    name = params[:name]
    twitter_pic_url = params[:twitter_pic_url]
    twitter_username = params[:twitter_username]
    github_username = params[:github_username]
    p = Programmer.find(id)
    #p.update(name: name, twitter_pic_url: twitter_pic_url, twitter_username: twitter_username, github_username: github_username )
    p.name = name
    p.twitter_pic_url = twitter_pic_url
    p.twitter_username = twitter_username
    p.github_username = github_username
    p.save
    redirect_to("/programmers")

  end

  def destroy
    id = params[:id]
    programmer = Programmer.find(id)
    programmer.destroy
    redirect_to '/programmers'

  end

end
