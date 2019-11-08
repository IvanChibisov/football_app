require 'date'

class Match < ApplicationRecord
  attr_accessor :first_club_id, :second_club_id, :date

  belong_to :club
  belong_to :club

  validates :date, :first_club_id, :second_club_id, presence: true
end
