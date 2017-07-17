class CreateJoinTableClassStudent < ActiveRecord::Migration[5.1]
  def change
    create_join_table :classes, :students do |t|
      t.float :first_term_mark
      t.float :second_term_mark
      t.float :final_mark

      t.index :class_id
      t.index :student_id
    end
  end
end
