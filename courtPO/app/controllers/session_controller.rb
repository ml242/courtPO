class SessionController < ApplicationController

  def new
  end
#old logout stuff from our original log out method
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
    auth_hash = request.env['omniauth.auth']
    if User.where(:uid => auth_hash["uid"]).empty?
      @user = User.new
      @user.uid = auth_hash["uid"]
      @user.name = auth_hash["info"]["nickname"]
      @user.image = auth_hash["info"]["image"]
      @user.save
      session[:user_id] = @user.id
      redirect_to("/cases")
    else @user = User.where(:uid => auth_hash["uid"]).first
      session[:user_id] = @user.id
      # render :text => "Welcome back #{@user.name}! You have already signed up."
      redirect_to("/cases")
    end
  end

  def destroy
    session[:user_id] = nil
    session["session_id"] = nil
    session["_csrf_token"] = nil
    session["oauth"]["twitter"]["callback_confirmed"] = false
    redirect_to root_url, :notice => "Signed out!"
    # redirect_to root_url

  end


end