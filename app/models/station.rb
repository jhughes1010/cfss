class Station < ActiveRecord::Base
  attr_accessible :name, :shift_id
  has_many :grids
  has_many :roles
  
  
end
