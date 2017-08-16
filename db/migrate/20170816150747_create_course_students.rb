class CreateCourseStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :course_students do |t|
    	t.references :course, index: true, foreign_key: true
    	t.references :student, index: true, foreign_key: { to_table: :users }
    end
  end
end
