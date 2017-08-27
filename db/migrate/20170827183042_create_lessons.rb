class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.references :schedule, foreign_key: true
      t.references :course,   foreign_key: true
      t.integer    :day

      t.timestamps
    end
  end
end
