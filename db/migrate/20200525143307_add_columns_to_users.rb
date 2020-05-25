class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :coach, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :licence, :string
    add_column :users, :location, :string
    add_column :users, :legal, :string
  end
end
