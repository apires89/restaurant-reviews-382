class Review < ApplicationRecord
  #allow you to use the method @review.restaurant
  belongs_to :restaurant
  validates :content, presence: true
end
