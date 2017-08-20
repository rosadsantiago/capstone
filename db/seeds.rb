# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:"Laura", email: "laura@gmail.com", password: "password")
User.create(name:"Peter", email: "Peter@gmail.com", password: "password")
User.create(name:"Karen", email: "Karen@gmail.com", password: "password")

Restaurant.create(name: "Devons Seafood")
Restaurant.create(name: "Bob Chinns")
Restaurant.create(name: "GT Fish & Oyester")
Restaurant.create(name: "Boston Fish Market")
Restaurant.create(name: "Fish Bar")
Restaurant.create(name: "Oyester Bah")
Restaurant.create(name: "The Angry Crab")

Review.create(text: "fdsafsd", user_id: 1, restaurant_id: 1)
Review.create(text: "aa", user_id: 2, restaurant_id: 1)
Review.create(text: "it's always fresh, which is impressive", user_id: 1, restaurant_id: 2)
Review.create(text: "seafood happy hour!", user_id: 3, restaurant_id: 4)
Review.create(text: "best clam chowder ever made", user_id: 3, restaurant_id: 1)

Image.create(url: "https://media.timeout.com/images/102876854/image.jpg", restaurant_id: 3 )
Image.create(url: "https://media.timeout.com/images/102876854/image.jpg", restaurant_id: 2 )
Image.create(url: "https://media.timeout.com/images/102876854/image.jpg", restaurant_id: 4 )
Image.create(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Paella_de_marisco_01.jpg/640px-Paella_de_marisco_01.jpg", restaurant_id: 1 )
Image.create(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Paella_de_marisco_01.jpg/640px-Paella_de_marisco_01.jpg", restaurant_id: 7 )
Image.create(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Paella_de_marisco_01.jpg/640px-Paella_de_marisco_01.jpg", restaurant_id: 6 )
Image.create(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Paella_de_marisco_01.jpg/640px-Paella_de_marisco_01.jpg", restaurant_id: 5 )
Image.create(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Paella_de_marisco_01.jpg/640px-Paella_de_marisco_01.jpg", restaurant_id: 4 )


Category.create(name: "Shellfish")
Category.create(name: "Fresh Fish")
Category.create(name: "Mollusk")


RestaurantCategory.create(restaurant_id: 1, category_id: 2)
RestaurantCategory.create(restaurant_id: 2, category_id: 2)
RestaurantCategory.create(restaurant_id: 3, category_id: 3)
RestaurantCategory.create(restaurant_id: 4, category_id: 2)
RestaurantCategory.create(restaurant_id: 5, category_id: 2)
RestaurantCategory.create(restaurant_id: 6, category_id: 3)
RestaurantCategory.create(restaurant_id: 7, category_id: 1)