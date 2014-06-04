class ChangeGridIdInRoles < ActiveRecord::Migration
  def up
    remove_column :roles, :grid_id
    add_column :roles, :station_id, :integer
    add_column :roles, :shift_id, :integer
  end

  def down
    add_column :roles, :grid_id, :integer
    remove_column :roles, :station_id
    remove_column :roles, :shift_id
  end
end





class RemoveShiftFromStations < ActiveRecord::Migration
  def up
    remove_column :stations, :shift_id
  end

  def down
    add_column :stations, :shift_id, :integer
  end
end