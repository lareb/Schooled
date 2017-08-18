class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
    	t.references :subject,        index: true
    	t.references :school,         index: true
    	t.references :group,          index: true
    	t.references :teacher,        index: true, references: :users
      t.integer :year,              null: false
      t.integer :grade,             null: false
    end
  end
end
