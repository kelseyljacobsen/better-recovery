class ReviewsController < ApplicationController

  def index
    @reviews = Review.includes(:user).where(doctor_id: params[:doctor_id])
    @id = params[:doctor_id]
    @name = Doctor.find(params[:doctor_id]).name
  end 

  def new
    @user = User.find(params[:user_id])
    @doctor = Doctor.find(params[:doctor_id])
    @review = Review.new(user_id: @user.id, doctor_id: @doctor.id)
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      @message = "Review saved."
    else
      @message = @review.errors.full_messages.to_sentence
    end
  end

private

  def review_params
    params.require(:review).permit(:user_id, :doctor_id, :rating, :body)
  end

end