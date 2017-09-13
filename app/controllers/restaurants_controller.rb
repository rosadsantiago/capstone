class RestaurantsController < ApplicationController
  def index
    category_id = params[:category_id]
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

    response = Unirest.post(
      "https://api.yelp.com/oauth2/token",
      parameters: {
        client_id: 'pihI-X1s9A0u-d7V5imtMA',
        client_secret: 'kcYKzVCCwECgzUEVHIjOIC5ngBfQXkGLpkEPVaDox3YteP26oGJlL0RR0ipgL6zo'
      }
    )
    access_token = response.body["access_token"]

    response = Unirest.get(
      "https://api.yelp.com/v3/businesses/search",
      parameters: {
        term: @restaurant.name,
        location: 'Chicago Illinois',
        categories: 'restaurants'
      },
      headers: {
        Authorization: "Bearer #{access_token}"
      }
    )
    yelp_id = response.body["businesses"][0]["id"]

    response = Unirest.get(
      "https://api.yelp.com/v3/businesses/#{yelp_id}",
      headers: {
        Authorization: "Bearer #{access_token}"
      }
    )

    @data = response.body
    # client = Yelp::Client.new({
    #   consumer_key: YOUR_CONSUMER_KEY,
    #   consumer_secret: YOUR_CONSUMER_SECRET,
    #   token: YOUR_TOKEN,
    #   token_secret: YOUR_TOKEN_SECRET
    # })

    render "show.html.erb"
  end



end
