class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit!)
    if @user.save
      session[:user_id] = @user.id.to_s
      flash[:info] = "Welcome! You can now write reviews for doctors."
      redirect_to root_path
    else
      flash[:danger] = @user.errors.full_messages.to_sentence
      redirect_to root_path
    end
  end

  # private
  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def user_params
  #     params.require(:user).permit(:first_name, :last_name, :username, :city, :state, :email, :password, :password_confirmation)
  #   end
end
