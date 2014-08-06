class Schedule < ActiveRecord::Base
  attr_accessible :date, :employee_id, :grid_id, :workweek, :year
  
  belongs_to :employee
  belongs_to :grid
  
  before_save :create_ww_year_details
  
  #def self.pullCurrent(workweek)
#    select("grids.* , schedules.* " ).joins("LEFT JOIN schedules ON grids.id = schedules.grid_id").order("grids.name")
 # end
  
  def self.horizon(workweek)
    #Get 4 workweeks of schedule data
    schedules = self.where("workweek >= ? and workweek < ?", workweek, workweek + 4).order("grid_id,date").includes("employee")
    gridSchedules = schedules.group_by{ |s| s.grid_id}
    #create hash that is grid_ids x 4WW and initialize to "unassigned"
    #set default for outer hash
    scheduleMatrix = Hash.new("EMPTY")
    gridSchedules.each do |key, days|
      whosWorking = Hash[ days.map{ |d| [d.date, d.employee.name] } ]
      #set default for inner hash
      whosWorking.default = "unassigned"
      scheduleMatrix[key] = whosWorking
    end
    scheduleMatrix
  end 
   
  def create_ww_year_details
    self.workweek = self.date.cweek
    self.year = self.date.cwyear    
  end
end
