class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :school_id
      t.integer :role_id
    end
  end
end
