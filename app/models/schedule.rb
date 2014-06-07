class Schedule < ActiveRecord::Base
  attr_accessible :date, :employee_id, :grid_id, :workweek, :year
  
  belongs_to :employee
  belongs_to :grid
  
  def self.horizon(workweek)
    self.where("workweek >= '?' and <= '?'", workweek, workweek + 4)
    
  end
end
