class ProgrammersController < ApplicationController

  def index
    @programmers = Programmer.all
    @title = "The #{@programmers.count} Programmers"
  end

  def create
    new_info = Hash.new
    new_info[name] = params[:name] if params[:name]
    new_info[github_username] = params[:github_username] if params[:github_username]
    new_info[twitter_username] = params[:twitter_username] if params[:twitter_username]
    new_info[img_url] = params[:img_url] if params[:img_url]
    p1 = Programmer.new
    new_info.each do |k, v|
      p1.k = v
    end
    p1.save
    redirect_to('/programmers')
  end

  def add
    @header = "Go back"
    @title = "Add a new programmer!"
  end

  def show
    id = params[:id].to_i
    @programmer = Programmer.find(id)
    @github = Github.repos.list user: "#{@programmer.github_username}"
    @twitter = Twitter.user_timeline("#{@programmer.twitter_username}")
    @title = "#{@programmer.name}"
    @programmers = Programmer.all
    @header = "The #{@programmers.count} Programmers"
  end

  def update
    id = params[:id].to_i
    p1 = Programmer.find(id)
    p1.name = params[:name]
    p1.github_username = params[:github_username]
    p1.twitter_username = params[:twitter_username]
    p1.img_url = params[:img_url]
    p1.save
    redirect_to("/programmers/#{id}")
  end

  def edit
    id = params[:id].to_i
    @programmer = Programmer.find(id)
    @programmers = Programmer.all
    @header = "The #{@programmers.count} Programmers"
  end

  def delete
    id = params[:id].to_i
    Programmer.find(id).destroy
    redirect_to('/programmers')
  end

end
