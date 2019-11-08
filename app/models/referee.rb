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

  belong_to :country
  
  before_validation do
    self.salary = 0 if salary.blank?
  end
end
