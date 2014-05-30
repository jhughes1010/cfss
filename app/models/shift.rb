class Shift < ActiveRecord::Base
  attr_accessible :name, :time_start, :time_stop
  has_many :grids
  
  def self.names
    Shift.joins(:grids).select("name").order("name")
  end
end
