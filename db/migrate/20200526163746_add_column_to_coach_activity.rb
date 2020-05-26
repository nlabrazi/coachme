class AddColumnToCoachActivity < ActiveRecord::Migration[6.0]
  def change
    add_reference :coach_activities, :user, foreign_key: true
    add_reference :coach_activities, :activity, foreign_key: true
  end
end
