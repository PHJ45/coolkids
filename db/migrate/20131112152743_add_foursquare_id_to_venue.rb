class AddFoursquareIdToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :foursquare_id, :integer
  end
end
