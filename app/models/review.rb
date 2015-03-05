class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :doctor

  validates :body, presence: true
  validates :rating, presence: true

# CREATES METHOD FOR USE IN THE REVIEW COLUMN OF INDEX
  def date_published
    created_at.localtime.strftime("%B %-d, %Y")
  end 

end
