class Classroom < ActiveRecord::Base
  attr_accessible :name, :vacancies, :discipline_id
  belongs_to :discipline
  has_many :schedules

  validates :vacancies, :name, presence: true
end
