class AddColumnsToCoachActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :coach_activities, :start_date, :date
    add_column :coach_activities, :end_date, :date
    add_column :coach_activities, :capacity, :integer
  end
end
