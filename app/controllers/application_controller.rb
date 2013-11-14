class ApplicationController < ActionController::Base
  protect_from_forgery

private
  helper_method :current_user, :logged_in_twitter

  def current_user
    #if session[:user_id]
    if params[:id]
      if @current_user.nil?
        @current_user = User.find(params[:id])
      end
    end

    return @current_user
  end

  def logged_in_twitter
    return session[:user_id]
  end
end

