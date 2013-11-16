class AddStarsToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :overall_stars, :integer
  end
end
