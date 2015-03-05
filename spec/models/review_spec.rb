require 'rails_helper'

RSpec.describe Review, :type => :model do

  it 'has a valid factory' do
    expect(FactoryGirl.build(:review)).to be_valid
  end

  it 'is invalid without a rating' do
    review = FactoryGirl.build(:review)
    review.rating = nil
    expect(review).to be_invalid
  end 

  it 'is invalid without a body' do
    review = FactoryGirl.build(:review)
    review.body = nil 
    expect(review).to be_invalid 
  end 

end