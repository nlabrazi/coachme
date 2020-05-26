class SetCoachFalseToUser < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :coach, :boolean, :default => false
  end
end
