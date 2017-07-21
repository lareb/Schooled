class CreateCourseGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :course_groups do |t|
      t.references :course, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
