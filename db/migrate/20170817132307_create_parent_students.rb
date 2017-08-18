class CreateParentStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :parent_students do |t|
    	t.references :student, index: true, references: :users
    	t.references :parent,  index: true, references: :users

      t.timestamps
    end
  end
end
