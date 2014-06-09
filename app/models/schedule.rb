class Schedule < ActiveRecord::Base
  attr_accessible :date, :employee_id, :grid_id, :workweek, :year
  
  belongs_to :employee
  belongs_to :grid
  
  before_save :create_ww_year_details
  
  #def self.pullCurrent(workweek)
#    select("grids.* , schedules.* " ).joins("LEFT JOIN schedules ON grids.id = schedules.grid_id").order("grids.name")
 # end
  
  def self.horizon(workweek)
    schedules = self.where("workweek >= ? and workweek < ?", workweek, workweek + 4).order("grid_id,date")
    schedules.group_by{ |s| s.grid_id}
  end 
   
  def create_ww_year_details
    self.workweek = self.date.cweek
    self.year = self.date.cwyear    
  end
end
