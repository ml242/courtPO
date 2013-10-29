class UsersController < ApplicationController
    def new
    @user = User.new
  end

  def create
    user = User.new(params["user"])
    if user.save
      flash[:notice] = "Welcome! Login in to continue. "
      redirect_to :back
    else
      raise
    end
  end
end
