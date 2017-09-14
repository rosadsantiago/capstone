class Api::V1::ReviewController < ApplicationController
  def index
    @review = Review.all
    render "index.json.jbuilder"
  end

  def create

    # @review = Review.new(
    # rating: params[:rating]
    # )
    # @review.save
    @review = Review.new(
      rating: params[:rating],
      text: params[:text],
      user_id: current_user.id,
      restaurant_id: params[:restaurant_id],
      category_id: params[:category_id],
      created_at: params[:created_at]
    )
    @review.save

   
    render "show.json.jbuilder"
  end
end
