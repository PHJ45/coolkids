class AddClearDateToShares < ActiveRecord::Migration
  def change
    add_column :shares, :clear_date, :datetime
  end
end
