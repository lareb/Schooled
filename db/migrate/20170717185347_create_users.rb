class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.references :school,        index: true
      t.references :role,          index: true

      t.string :name
      t.string :email
      t.string :password_digest
    end
  end
end
