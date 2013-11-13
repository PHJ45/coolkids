class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
    t.string :name
    t.integer :user_id

    t.timestamps
    end
    add_index :venues, :user_id 
  end
end
