class ApplicationController < ActionController::Base
  protect_from_forgery


private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    # User.find session[:user_id] if session[:user_id]
    # @current_user = session[:oauth]["twitter"]["callback_confirmed"]
  end
  helper_method :current_user
end

# session["oauth"]["twitter"]["callback_confirmed"]
