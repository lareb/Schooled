class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
  		t.references :school,        index: true
  		t.references :role,          index: true
  		t.references :group,         index: true
      t.string :name
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
