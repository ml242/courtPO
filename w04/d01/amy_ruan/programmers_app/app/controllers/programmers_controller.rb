class ProgrammersController < ApplicationController
  def index
    @programmers = Programmer.all
  end

  def new
  end

  def create
    name = params[:create_name]
    twitter_username = params[:create_twitter_username]
    twitter_pic = params[:create_twitter_pic]
    programmer = Programmer.create(:name => name, :twitter_username => twitter_username, :twitter_pic => twitter_pic)
    redirect_to ("/programmers")
  end


  def show
    id = params[:id]
    @programmer = Programmer.find(id)
  end

  def edit
    @id = params[:id]
    @programmer = Programmer.find(@id)
  end

  def update
    id = params[:id]
    factor = params[:factor]
    name = params[:update_name]
    twitter_username = params[:update_twitter_username]
    twitter_pic = params[:update_twitter_pic]
    programmer = Programmer.find(id)
    case
    when factor == "name"
      programmer.update_attributes(name: name)
    when factor == "twitter_username"
      programmer.update_attributes(twitter_username: twitter_username)
    when factor == "twitter_pic"
      programmer.update_attributes(twitter_pic: twitter_pic)
    end
     redirect_to ("/programmers/#{id}")
  end

  def delete
    @id = params[:id]
    programmer = Programmer.find(@id)
    programmer.destroy
    redirect_to ("/programmers")
  end

end