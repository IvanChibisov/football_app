class Club < ApplicationRecord
  validates :name, length: { minimum: 2 }, presence: true, uniqueness: true
  validates :championship_id, presence: true

  before_create do
    self.coach_id = 1 if coach_id.blank?
  end
end
