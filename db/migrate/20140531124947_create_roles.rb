class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :employee_id
      t.integer :grid_id

      t.timestamps
    end
  end
end
