#encoding: utf-8

class Schedule < ActiveRecord::Base
  belongs_to :classroom
  attr_accessible :day, :time_begin, :time_end
  validates_presence_of :day, :time_begin, :time_end
end
