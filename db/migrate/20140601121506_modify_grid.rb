class ModifyGrid < ActiveRecord::Migration
  def up
        add_column :grids, :name, :string
  end

  def down
    remove_column :grids, :name
  end
end
