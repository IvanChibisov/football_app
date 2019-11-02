class SalaryValidator < ActiveModel::Validator
  def validate(record)
    if record.salary < 0 
      record.errors[:base] << "This salary is not correct"
    end
  end
end

class Referee < ApplicationRecord
  attr_accessor :name, :age, :country_id, :salary
  validates_with SalaryValidator
  validates :name, presence: true

  before_validation do
    self.salary = 0 if salary.blank?
  end
  
   def initialize(style)
    @name = style.fetch(:name, "Ronaldo")
    @age = style.fetch(:age, 22)
    @country_id = style.fetch(:country_id, 1)
    @salary = style.fetch(:salary, 1000)
  end
end
