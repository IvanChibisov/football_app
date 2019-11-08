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

  belong_to :country
  has_many :clubs
  
  before_save do
    self.name = 'Liga' if name.blank?
  end

  #before_create do
  #  self.name = database.find(country_id).name if name.blank?
  #end
end
