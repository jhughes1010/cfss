class Role < ActiveRecord::Base
  attr_accessible :employee_id, :shift_id, :station_id
  
  belongs_to :employee
  belongs_to :shift
  belongs_to :station
  
  
end
