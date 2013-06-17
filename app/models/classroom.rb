class Classroom < ActiveRecord::Base
  attr_accessible :name, :vacancies, :discipline_id
  belongs_to :discipline

  validates :vacancies, :name, presence: true
end
