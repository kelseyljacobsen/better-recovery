class PagesController < ApplicationController

  def index
    @doctors = Doctor.all
    @reviews = Review.all
  end

end