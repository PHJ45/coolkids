class AddMoreDataToVenues < ActiveRecord::Migration
  def change  
    add_column :venues, :zip, :integer
    add_column :venues, :phone, :string
    add_column :venues, :url, :string
    add_column :venues, :creator_user_id, :integer
    add_column :venues, :reviewer_user_id, :integer
  end
end
