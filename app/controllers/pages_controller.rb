class PagesController < ApplicationController

  def index
    @doctors = Doctor.all
  end

end