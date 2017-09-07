class ReviewsController < ApplicationController


  def index
    @reviews = Review.all
    @restaurants = Restaurant.all
    render "index.html.erb"
  end


  
  def show
    @restaurants = Restaurant.find_by(id: params[:id])
    @review = Review.find_by(restaurant_id: params[:restaurant_id])
    render "show.html.erb" 
  end  



  def create
    puts "*" * 50
    p params
    p current_user.id
    puts "*" * 50
    @review = Review.new(
      rating: params[:rating],
      text: params[:text],
      user_id: current_user.id,
      restaurant_id: params[:restaurant_id],
      category_id: params[:category_id]
    )
    @review.save
    render "show.html.erb"
  end

end