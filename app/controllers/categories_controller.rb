class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render "index.html.erb"
  end




end