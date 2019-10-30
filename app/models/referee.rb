class SalaryValidator < ActiveModel::Validator
  def validate(record)
    if record.salary < 0 
      record.errors[:base] << "This salary is not correct"
    end
  end
end

class Referee < ApplicationRecord
  validates_with SalaryValidator
  validates :name, presence: true

  before_validation do
    self.salary = 0 if salary.blank?
  end
end
