class Club < ApplicationRecord
  attr_accessor :coach_id, :name, :championship_id
  validates :name, length: { minimum: 2 }, presence: true, uniqueness: true
  validates :championship_id, presence: true

  before_create do
    self.coach_id = 1 if coach_id.blank?
  end
  
  def initialize(style)
    @coach_id = style.fetch(:coach_id, 1)
    @name = style.fetch(:name, "Default Club")
    @championship_id = style.fetch(:championship_id, 1)
  end
end
