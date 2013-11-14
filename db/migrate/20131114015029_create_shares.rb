class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.integer :user_id
      t.integer :venue_id #only exists for initiator until counterparty accepts
      t.integer :party_type #initiator / counterparty
      t.string  :type # gift or trade
      t.string  :state #proposed, approved, rejected

      t.timestamps
    end
  end
end
