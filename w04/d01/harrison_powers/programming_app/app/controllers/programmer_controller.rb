class ProgrammerController < ApplicationController

  def index
    if request.post?
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
    elsif request.get?
      @programmers = Programmer.all
      @title = "The #{@programmers.count} Programmers"
    end
  end

  def view
    id = params[:id].to_i
    @programmer = Programmer.find(id)
    @github = Github.repos.list user: "#{@programmer.github_username}"
    @twitter = Twitter.user_timeline("#{@programmer.twitter_username}")
    @title = "#{@programmer.name}"
    @programmers = Programmer.all
    @header = "The #{@programmers.count} Programmers"
  end

  def edit
    id = params[:id].to_i
    if request.post?
      new_info = Hash.new
      new_info[name] = params[:name] if params[:name]
      new_info[github_username] = params[:github_username] if params[:github_username]
      new_info[twitter_username] = params[:twitter_username] if params[:twitter_username]
      new_info[img_url] = params[:img_url] if params[:img_url]
      p1 = Programmer.find(id)
      new_info.each do |k, v|
        p1.k = v
      end
      p1.save
      redirect_to("/programmers/#{id}")
    elsif request.get?
      @programmer = Programmer.find(id)
      @programmers = Programmer.all
      @header = "The #{@programmers.count} Programmers"
    end
  end

  def delete
    if request.post?
      id = params[:id].to_i
      Programmer.find(id).destroy
    end
    redirect_to('/programmers')
  end

end
