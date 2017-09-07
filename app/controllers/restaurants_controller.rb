class RestaurantsController < ApplicationController
  def index
    category_id = params[:category]
    if category_id
      category = Category.find_by(id: category_id)
      @restaurants = category.restaurants
    else
      @restaurants = Restaurant.all
    end
    @category_id = params["category_id"]
    render "index.html.erb"
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])
    @category_id = params["category_id"]
    render "show.html.erb"
  end



end
