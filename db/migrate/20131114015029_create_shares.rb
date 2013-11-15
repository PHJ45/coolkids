class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.integer  :user_id
      t.integer  :reciever_id
      t.integer  :cards_offered 
      t.integer  :cards_returned 
      t.boolean  :gift  
      t.boolean  :rejected 

      t.timestamps
    end
  end
end


