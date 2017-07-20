class CreatePermissionRoles < ActiveRecord::Migration[5.1]
  def change
    create_join_table :roles, :permissions do |t|
      t.references :role,        index: true
      t.references :permission,  index: true
    end
  end
end
