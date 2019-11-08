class PositionValidator < ActiveModel::Validator
  def validate(record)
    if record.position_in_country_table < 1 && record.position_in_country_table > 200
      record.errors[:base] << "This position is not correct"
    end
  end
end

class Country < ApplicationRecord

  has_many :championships
  has_many :players
  has_many :referees

  validates :name, presence: true, length: { minimum: 3 }, uniqueness: true
  validates_with PositionValidator

  # def initialize(name: 'Ivan', continent: 'Europa', championship_id: '200', position_in_country_table: 1)
  #   @name = name
  #   @continent = continent
  #   @championship_id = championship_id
  #   @position_in_country_table = position_in_country_table
  # end
end
