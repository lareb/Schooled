class CreateMarks < ActiveRecord::Migration[5.1]
  def change
    create_table :marks do |t|
    	t.references :course,           index: true
    	t.references :user,             index: true
      t.string :mark
      t.boolean :approved
      t.string :description

      t.timestamps
    end
  end
end
