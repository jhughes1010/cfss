class Grid < ActiveRecord::Base
  attr_accessible :shift_id, :station_id
  #has_many :shifts
  belongs_to :shift
  belongs_to :station
  belongs_to :employee
  
  has_many :schedules
  
  before_save :create_grid_name
  
  #def self.pullCurrent(workweek)
#    select("grids.* , schedules.* " ).joins("LEFT JOIN schedules ON grids.id = schedules.grid_id").order("grids.name")
 # end
  
  
  def create_grid_name
    self.name = self.shift.name + '--' + self.station.name
    #self.name = "James"
  end
end
