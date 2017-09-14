json.array! @review.each do |review|
  json.text review.text
  json.rating review.rating
  json.restaurant review.restaurant
  json.user review.user
  json.category review.category
  json.restaurantId review.restaurant.id
  json.categoryId review.category.id
  json.createdAt review.created_at.strftime("%b %-d, %Y")
end


