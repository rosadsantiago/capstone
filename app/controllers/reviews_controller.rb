class ReviewsController < ApplicationController


  def index
    render "show.html.erb"
  end


  
  def show
    @review = Review.find_by(id: params[:id])
    render "show.html.erb"
  end  



  def create
    @review = Review.new(
    rating: params[:rating]
    )
    @review.save
    render "show.html.erb"
  end

end