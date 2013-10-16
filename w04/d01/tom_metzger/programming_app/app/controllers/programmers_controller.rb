class ProgrammersController < ApplicationController

  def index
    @all_programmers = Programmer.order("name ASC").all
  end

  def programmer
    # this route will take the programmer ID passed through the params
    # query the database
    # return the programmer's information
    programmer_id = params["id"]
    @result = Programmer.find(programmer_id)
  end

  def new_programmer
  end

  def new
    Programmer.create!(
      name:               params[:name],
      twitter_pic_url:    params[:twitter_img_url],
      twitter_username:   params[:twitter_username],
      github_username:    params[:github_username]
      )
    redirect_to ("/programmers")
  end

  def edit_form
  programmer_id = params[:id]
  @result = Programmer.find(programmer_id)
  end

  def edit
    programmer_id = params[:id]
    user = Programmer.find(programmer_id)
    user.name = params[:name]
    user.twitter_username = params[:username]
    user.twitter_pic_url = params[:img_url]
    user.github_username = params[:github]
    user.save
    # user.update(
    #   name: params["name"],
    #   twitter_username: params["username"],
    #   twitter_pic_url: params["img_url"],
    #   github_username: params["github"])
    redirect_to ("/programmers/#{programmer_id}")
  end

end
