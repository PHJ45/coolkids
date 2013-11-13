class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text     :description
      t.integer  :venue_id
      t.integer  :user_id

      t.timestamps
    end
    add_index :reviews, :user_id
    add_index :reviews, :venue_id 
  end
end
