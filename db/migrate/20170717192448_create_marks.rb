class CreateMarks < ActiveRecord::Migration[5.1]
  def change
    create_table :marks do |t|
      t.string :mark
      t.boolean :approved
      t.string :description
    end
  end
end
