class Grid < ActiveRecord::Base
  attr_accessible :shift_id, :station_id
  #has_many :shifts
  belongs_to :shift
  belongs_to :station
  belongs_to :employee
  
  has_many :schedules
  
  before_save :create_grid_name
  
  def self.get_matrix()
    select("'shifts.name', 'stations.name', grids.id, grids.shift_id, grids.station_id" ).joins("JOIN stations ON grids.station_id = stations.id").joins("JOIN shifts ON grids.shift_id = shifts.id").order("shifts.name, stations.name")
  end
  
  
  def create_grid_name
    self.name = self.shift.name + '--' + self.station.name
    #self.name = "James"
  end
end
