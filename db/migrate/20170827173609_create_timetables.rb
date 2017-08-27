class CreateTimetables < ActiveRecord::Migration[5.1]
  def change
    create_table :timetables do |t|
      t.references :school, foreign_key: true
      
      t.timestamps
    end
  end
end
