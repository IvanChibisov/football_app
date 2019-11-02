class PositionForChampionShipValidator < ActiveModel::Validator
  def validate(record)
    if record.position_in_top < 1 && record.position_in_top > 200
      record.errors[:base] << "This position is not correct"
    end
  end
end

class Championship < ApplicationRecord
  attr_accessor :name, :position_in_top, :country_id
  validates :country_id, presence: true
  validates :name, length: { minimum: 4 }
  validates_with PositionForChampionShipValidator
  validates :position_in_top, uniqueness: true, presence: true

  def initialize(style)
    @name = style.fetch(:name, 'Liga')
    @position_in_top = style.fetch(:position_in_top, 1)
    @country_id = style.fetch(:country_id, 1)
  end

  #before_create do
  #  self.name = database.find(country_id).name if name.blank?
  #end
end
