class Schedule < ActiveRecord::Base
  attr_accessible :date, :employee_id, :grid_id, :workweek, :year
end
