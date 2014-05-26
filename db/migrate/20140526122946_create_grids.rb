class CreateGrids < ActiveRecord::Migration
  def change
    create_table :grids do |t|
      t.integer :station_id
      t.integer :shift_id

      t.timestamps
    end
  end
end
