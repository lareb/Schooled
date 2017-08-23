class CreateAbsences < ActiveRecord::Migration[5.1]
  def change
    create_table :absences do |t|
      t.references :user,           index: true
      t.references :course,         index: true
      t.integer :value,             null: false, default: 1
      t.integer :purpose,           null: false, default: 0
      t.boolean :excused,           null: false, default: false

      t.timestamps
    end
  end
end
