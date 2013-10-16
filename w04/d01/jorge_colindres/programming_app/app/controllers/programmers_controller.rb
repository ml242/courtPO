class ProgrammersController < ApplicationController

  # GET from '/programmers'
  def index
    @all_programmers = Programmer.all
  end

  # GET form '/programmers/new'
  def new
  end

  # GET from '/programmers/:id'
  def show
    @id = params[:id]

    programmer = Programmer.find @id

    @name = programmer.name
    @twitter_username = programmer.twitter_username
    @twitter_pic = programmer.twitter_pic
    @github_username = programmer.github_username

    github_response = Github.repos.list user: "#{@github_username}"
    @repos = github_response.body

  end

  # GET from '/programmers/:id/edit'
  def edit
    @id = params[:id]

    programmer = Programmer.find @id

    @name = programmer.name
    @twitter_username = programmer.twitter_username
    @twitter_pic = programmer.twitter_pic
    @github_username = programmer.github_username
  end

  # POST from '/programmers'
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

  # POST from '/programmers/:id'
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

  # POST from '/programmers/:id/delete'
  def destroy
    id = params[:id]

    programmer = Programmer.find id
    programmer.delete

    redirect_to "/programmers"
  end

end
