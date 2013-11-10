class UsersController < ApplicationController
<<<<<<< HEAD

=======
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully create.'}
        format.json { render json: @user, status: :created, location: @user}
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end

  def index
    @users = User.all

    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end
>>>>>>> 5c16fedf60c7e5b78a0b546f46549859013457d1
end