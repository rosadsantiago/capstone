class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :images
  has_many :restaurant_categories
  has_many :categories, through: :restaurant_categories
  has_many :users, through: :reviews
end
