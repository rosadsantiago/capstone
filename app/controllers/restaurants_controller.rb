class RestaurantsController < ApplicationController
  def index
    category_id = params[:category]
    if category_id
      category = Category.find_by(name: category_id)
      @restaurants = category.restaurants
    else
      @restaurants = Restaurant.all
    end
    render "index.html.erb"
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])
    render "show.html.erb"
  end



end
