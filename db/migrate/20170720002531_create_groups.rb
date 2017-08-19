class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.integer :grade,     null: false
      t.string :name,       null: false
      t.references :school, foreign_key: true
    end
  end
end
