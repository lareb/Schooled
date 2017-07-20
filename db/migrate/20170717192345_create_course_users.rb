class CreateCourseUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :courses, :users do |t|
      t.references :course,        index: true
      t.references :user,          index: true
      t.float :first_term_mark
      t.float :second_term_mark
      t.float :final_mark
    end
  end
end
