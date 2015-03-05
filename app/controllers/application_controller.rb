class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  protect_from_forgery with: :exception

  # CHECKS TO SEE IF THERE IS A USER SIGNED IN
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id]) 
    else 
    @current_user = nil
    end 
    return @current_user
 end 

  helper_method :current_user 
  
end
