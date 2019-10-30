class PositionForChampionShipValidator < ActiveModel::Validator
  def validate(record)
    if record.position_in_top < 1 && record.position_in_top > 200
      record.errors[:base] << "This position is not correct"
    end
  end
end

class Championship < ApplicationRecord
  validates :country_id, presence: true
  validates :name, length: { minimum: 4 }
  validates_with PositionForChampionShipValidator
  validates :position_in_top, uniqueness: true, presence: true

  #before_create do
  #  self.name = database.find(country_id).name if name.blank?
  #end
end
