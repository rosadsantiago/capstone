json.array! @review.each do |review|
  json.text review.text
  json.rating review.rating
end
