class Restaurant < ApplicationRecord
  #has many allows you to use the method @restaurant.reviews
  #depedent destroy --> destroy all the reviews of a restaurant upon deletion
  has_many :reviews, dependent: :destroy
end
