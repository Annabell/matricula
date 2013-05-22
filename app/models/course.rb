class Course < ActiveRecord::Base
  attr_accessible :cod, :name
  validates_presence_of :cod, :name
end
