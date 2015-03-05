class SessionsController < ApplicationController

  # CREATES A NEW SESSION
  def new
  end 

  def create
    user = User.find_by(email: params[:user][:email]) 

    # USER EXISTS AND PASSWORD MATCHES THAT USER'S PASSWORD
    if user && user.authenticate(params[:user][:password]) 
      # RESETS THE SESSION FOR ADDED SECURITY
      reset_session
      flash[:success] = "Welcome back, #{user.first_name}!"
      session[:user_id] = user.id.to_s 
      redirect_to root_path
    else
      flash[:danger] = "Incorrect password and/or username."
      redirect_to root_path
    end 
  end 

  # USER LOGS OUT AND SESSION IS DESTROYED
  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out!"
    redirect_to root_path
  end 

end 
