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
  
  before_validation do
    self.salary = 0 if salary.blank?
  end

  def initialize(style)
    @name = style.fetch(:name, 'Sergo')
    @salary = style.fetch(:salary, 1000)
    @club_id = style.fetch(:club_id, 1)
  end
end

