class SalaryValidator < ActiveModel::Validator
  def validate(record)
    if record.salary < 0 
      record.errors[:base] << "This salary is not correct"
    end
  end
end

class Coach < ApplicationRecord
  validates :name, length: { minimum: 5 }, presence: true
  validates_with SalaryValidator
  
  before_validation do
    self.salary = 0 if salary.blank?
  end
end

