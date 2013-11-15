class AddImgToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :img, :string
  end
end
