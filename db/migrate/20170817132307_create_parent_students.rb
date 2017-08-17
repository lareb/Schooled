class CreateParentStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :parent_students do |t|

      t.timestamps
    end
  end
end
