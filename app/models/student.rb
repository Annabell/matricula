class Student < User
  attr_accessible :name, :registration_number

  validates :name, :registration_number, presence: true
end