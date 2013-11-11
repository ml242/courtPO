class SessionController < ApplicationController

  def new
  end

  # def create
  #   #email = params[:email]
  #   password = params[:password]
  #   username = params[:twitter]
  #   @user = User.where(twitter: username).first
  #   if @user && @user.authenticate(password)
  #     session[:user_id] = @user.id
  #     # redirect_to("/users/#{user.id}")
  #     redirect_to(@user)
  #   else
  #     render :new
  #   end
  # end

  # def destroy
  #   session[:user_id] = nil
  #   redirect_to :back
  #   # redirect to the search, so the root
  # end

  def create
    raise env["omniauth.auth"].to_yaml
    # auth = request.env["omniauth.auth"]
    # user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) ||User.create_with_omniauth(auth)
    # session[:user_id] = user.id
    # redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end


end