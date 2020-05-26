class CreateCoachActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :coach_activities do |t|
      t.float :price

      t.timestamps
    end
  end
end
