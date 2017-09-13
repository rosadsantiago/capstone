class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :images
  has_many :restaurant_categories
  has_many :categories, through: :restaurant_categories
  has_many :users, through: :reviews

  def category_average_review(input_category_id)
    # ratings is an array of rating integers
    ratings = reviews
      .where(category_id: input_category_id)
      .pluck(:rating)
      .select { |rating| rating }
    if ratings.length > 0
      sum_ratings = ratings.reduce(0) { |sum, rating| sum + rating }
      average_rating = sum_ratings / ratings.length.to_f
      return average_rating.round(1)
    else
      return false
    end




    # if restaurant.rating != []
    #   sum_ratings = ratings.reduce{|sum, rating| sum + rating}
    #   average_rating = sum_ratings / ratings.length
    #   return average_rating.round(1)
    # else
    #   return -1
    # end
  end


    # compute the average of ratings
    

end
