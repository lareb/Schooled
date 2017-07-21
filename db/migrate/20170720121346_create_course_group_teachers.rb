class CreateCourseGroupTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :course_group_teachers do |t|
      t.references :course_group
      t.references :user

      t.timestamps
    end
  end
end
