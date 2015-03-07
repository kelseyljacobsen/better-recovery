class ReviewsController < ApplicationController

  def index
    @reviews = Review.includes(:user).where(doctor_id: params[:doctor_id])
    @id = params[:doctor_id]
    @doctor = Doctor.find(params[:doctor_id])
  end 

  def new
    @user = User.find(params[:user_id])
    @doctor = Doctor.find(params[:doctor_id])
    @review = Review.new(user_id: @user.id, doctor_id: @doctor.id)
  end

  def create
    @review = Review.new(review_params)
    @id = @review.doctor_id

    if @review.save
      @message = "Review saved."
    else
      @message = @review.errors.full_messages.to_sentence
    end
  end

  def edit
    @review = Review.find(params[:id])
    @doctor = Doctor.find(params[:doctor_id])
  end 

  def update
    @review = Review.find(params[:id])
    if @review.update_attributes(review_params)
      @message = "Review updated."
    else
      @message = @review.errors.full_messages.to_sentence
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @id = @review.doctor_id
    @review.destroy
      @message = "Review deleted."
  end 

private

  def review_params
    params.require(:review).permit(:user_id, :doctor_id, :rating, :body)
  end

end