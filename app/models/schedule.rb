#encoding: utf-8

class Schedule < ActiveRecord::Base
  belongs_to :classroom
  attr_accessible :day, :time_begin, :time_end, :classroom_id
  validates :day, :time_begin, :time_end, :classroom_id, presence: true
  before_validation :validate_times


  def validate_times
  	unless(self.time_begin.nil? or self.time_end.nil?) #TODO retirar essa condição (quebra os testes que nao passam todos att)
  		if self.time_begin > self.time_end
  			errors.add(:time_end, "tem que ser após Horário Inicial.")
  		end
  	end
  end
end
