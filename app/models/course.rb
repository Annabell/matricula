class Course < ActiveRecord::Base
  attr_accessible :cod, :name
  validates :cod, :name, presence: true
end
