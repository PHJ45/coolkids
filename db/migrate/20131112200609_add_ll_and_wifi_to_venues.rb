class AddLlAndWifiToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :wifi,  :boolean
    add_column :venues, :lat,   :string
    add_column :venues, :lng,  :string
  end
end
