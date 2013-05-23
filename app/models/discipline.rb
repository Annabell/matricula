class Discipline < ActiveRecord::Base
  attr_accessible :cod, :credits, :name
  validates :cod, :name, presence: true
  validates :credits, :numericality => { :only_integer => true }, presence: true
end
