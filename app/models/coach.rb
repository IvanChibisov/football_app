class SalaryValidator < ActiveModel::Validator
  def validate(record)
    if record.salary < 0
      record.errors[:base] << "This salary is not correct"
    end
  end
end

class Coach < ApplicationRecord
  attr_accessor :name, :salary, :club_id
  validates :name, length: { minimum: 5 }, presence: true
  validates_with SalaryValidator

  belong_to :club

  before_validation do
    self.salary = 0 if salary.blank?
    self.club_id = 1 if club_id.blank?
    self.name = 'Sergo' if name.blank?
  end
end
