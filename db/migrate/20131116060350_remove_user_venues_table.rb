class RemoveUserVenuesTable < ActiveRecord::Migration
  def change
    drop_table :user_venues
  end
end
