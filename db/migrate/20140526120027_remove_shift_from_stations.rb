class RemoveShiftFromStations < ActiveRecord::Migration
  def up
    remove_column :stations, :shift_id
  end

  def down
    add_column :stations, :shift_id, :integer
  end
end
