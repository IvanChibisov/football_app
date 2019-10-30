class Match < ApplicationRecord
  validates :date, :first_club_id, :second_club_id, presence: true
end
