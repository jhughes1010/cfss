class Employee < ActiveRecord::Base
  attr_accessible :email, :name, :telephone
  
  has_many :roles
end
