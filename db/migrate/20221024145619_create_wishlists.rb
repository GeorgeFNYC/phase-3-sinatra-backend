class CreateWishlists < ActiveRecord::Migration[6.1]
  def change
    create_table :wishlists do |t|
      t.integer :restaurant_id
      t.integer :user_id
      t.integer :ranking
    end
  end
end
