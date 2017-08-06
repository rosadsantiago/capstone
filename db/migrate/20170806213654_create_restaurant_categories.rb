class CreateRestaurantCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_categories do |t|
      t.integer :restaurants_id
      t.integer :categories_id

      t.timestamps
    end
  end
end
