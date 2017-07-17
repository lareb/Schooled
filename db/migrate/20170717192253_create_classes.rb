class CreateClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :classes do |t|
      t.date :year
      t.integer :subject_id
    end
  end
end
