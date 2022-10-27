class CreateEateds < ActiveRecord::Migration[6.1]
  def change
    create_table :eateds do |t|
      t.integer :user_id
      t.integer :restaurant_id
    end
  end
end
