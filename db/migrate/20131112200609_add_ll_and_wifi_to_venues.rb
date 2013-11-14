class AddLlAndWifiToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :wifi,  :boolean
    add_column :venues, :lat,   :string
    add_column :venues, :lng,   :string
    add_column :venues, :close_time,   :string
  end
end
