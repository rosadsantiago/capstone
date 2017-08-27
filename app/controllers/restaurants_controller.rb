class RestaurantsController < ApplicationController
  def index
    category_name = params[:category]
    if category_name
      category = Category.find_by(name: category_name)
      @restaurants = category.restaurants
    else
      @restaurants = Restaurant.all
    end
    render "show.html.erb"
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])
    render "show.html.erb"
  end



end
