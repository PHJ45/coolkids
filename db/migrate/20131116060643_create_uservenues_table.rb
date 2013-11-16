class CreateUservenuesTable < ActiveRecord::Migration
  def change
    create_join_table :users, :venues, table_name: :uservenues
  end
end
