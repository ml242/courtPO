class SessionsController < ApplicationController
  # new
    # this will give you a form to login
      # email
      # password
  def new
    # render :text => "This is where I login, email and password, => create"
    # post /sessions
  end

  def create
    # first I need to find the user with the given email address
    input_password = params[:password] #password user typed in on the login screen
    user = User.find_by_email(params[:email])

    if user.nil?
      flash[:error] = "Unfortunately, the email #{params[:email]} does not exist"
      redirect_to "/sessions/new"
      return
    end

    # check the password on the existing db entry
    # do the passwords match?
    # if they match
    if input_password == user.password
      session[:user_id] = user.id
      flash[:notice] = "You have successfully logged in #{user.email}! "
    else
      flash[:error] = "Unfortunately you typed in the wrong password..."
    end
    # then set the session
    # otherwise
    # yo dawg, wrong password
    redirect_to "/"
  end

  # actually removes the userid from the session
  def destroy
    #raise
    session[:user_id] = nil
    redirect_to :back
    # redirect to the search root
  end
end
