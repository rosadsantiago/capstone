class Api::V1::ReviewController < ApplicationController
  def index
    @review = Review.all
    render "index.json.jbuilder"
  end

  def create
    @review = review.new(name: params[:form_name], bio: params[:form_bio])
    @review.save
    render "show.json.jbuilder"
  end
end
