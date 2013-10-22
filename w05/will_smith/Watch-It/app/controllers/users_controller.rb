class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    user = User.authenticate(params[:username], params[:password])
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/main", :notice => "Welcome to Watch.it!"
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
