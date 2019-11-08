class Club < ApplicationRecord
  attr_accessor :coach_id, :name, :championship_id
  validates :name, length: { minimum: 2 }, presence: true, uniqueness: true
  validates :championship_id, presence: true

  has_one :coach
  belong_to :championship
  has_many :players

  before_save do
    self.coach_id = 1 if coach_id.blank?
  end
end
