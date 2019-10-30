class PositionValidator < ActiveModel::Validator
  def validate(record)
    if record.position_in_country_table < 1 && record.position_in_country_table > 200
      record.errors[:base] << "This position is not correct"
    end
  end
end

class Country < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }, uniqueness: true
  validates_with PositionValidator
end
