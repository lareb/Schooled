class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
			t.references :school,        index: true
      t.string :title
    end
  end
end
