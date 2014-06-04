class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :date
      t.integer :employee_id
      t.integer :grid_id
      t.integer :workweek
      t.integer :year

      t.timestamps
    end
  end
end
