class CreateAttends < ActiveRecord::Migration[6.1]
  def change
    create_table :attends do |t|
      t.integer :restaurant_id
      t.integer :user_id
      t.boolean :been_to
    end
  end
end
