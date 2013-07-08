#encoding: utf-8

class Schedule < ActiveRecord::Base
  belongs_to :classroom
  attr_accessible :day, :time_begin, :time_end, :classroom_id
  validates :day, :time_begin, :time_end, :classroom_id, presence: true
  before_save :validate_times


  def validate_times
  	if self.time_begin > self.time_end
  		errors.add(:time_end, "Horario de término tem que ser após horario de início.")
  	end
  end
end
