class AddCategoryToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :description, :string
  end
end
