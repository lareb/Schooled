class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.references :timetable, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
