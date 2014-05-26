class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :name
      t.time :time_start
      t.time :time_stop

      t.timestamps
    end
  end
end
