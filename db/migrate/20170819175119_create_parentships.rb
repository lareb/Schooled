class CreateParentships < ActiveRecord::Migration[5.1]
  def change
    create_table :parentships do |t|
      t.integer :parent_id
      t.integer :student_id

      t.timestamps
    end
  end
end
