json.array! @review.each do |review|
  json.text review.text
  json.rating review.rating
  json.restaurant review.restaurant
  json.user review.user
  json.category review.category
end


