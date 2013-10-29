class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    # render users/new signup form
    @user = User.new
  end
  # POST /users
  def create
    raise
    @user = User.new(params[:user])
    if @user.save
      redirect_to(login_path)
    else
      # go to users/new.html.erb and just display that page.
      # in this action
      render :new
    end
  end
  def show
    @favorite = Favorite.new
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
    render :new
  end
end
