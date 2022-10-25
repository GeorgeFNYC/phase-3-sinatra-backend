class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :image_url
      t.string :cuisine
      t.string :price_point
      t.string :description
      t.string :reviews
      t.string :location
    end
  end
end
