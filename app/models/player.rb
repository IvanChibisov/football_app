class SalaryValidator < ActiveModel::Validator
  def validate(record)
    if record.salary < 0 
      record.errors[:base] << "This salary is not correct"
    end
  end
end
class AgeValidator < ActiveModel::Validator
  def validate(record)
    if record.age < 0 
      record.errors[:base] << "This age is not correct"
    end
  end
end

class Player < ApplicationRecord
  attr_accessor :name, :age, :country_id, :club_id, :position, :salary
  validates :name, :club_id, presence: true
  validates :name, length: { minimum: 5 }
  validates_with SalaryValidator
  validates_with AgeValidator
  validates :age , numericality: true

  before_validation do
    self.salary = 0 if salary.blank?
    self.age = 17 if age.blank?
  end

  def initialize(style)
    @name = style.fetch(:name, "Ronaldo")
    @age = style.fetch(:age, 22)
    @country_id = style.fetch(:country_id, 1)
    @club_id = style.fetch(:club_id, 1)
    @position = style.fetch(:position, "Defender")
    @salary = style.fetch(:salary, 1000)
  end
end
