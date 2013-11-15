class ApplicationController < ActionController::Base
  protect_from_forgery

private

  def current_user
    if session[:user_id]
      # do a where search to find a possible user
      new_arr = User.where(id: session[:user_id])
      # if the array is not empty, we have a user, set current user and redirect
      if new_arr.present?
        @current_user = new_arr.first
      else
      # else destroy session and redirect home
        session = nil
        redirect_to('/signout')
        return
      end
    end
  end

  helper_method :current_user

  # def logged_in_twitter
  #   return session[:user_id]
  # end
end

