require 'date'

class Match < ApplicationRecord
  attr_accessor :first_club_id, :second_club_id, :date
  validates :date, :first_club_id, :second_club_id, presence: true

  def initialize(style)
    @first_club_id = style.fetch(:first_club_id, 1)
    @second_club_id = style.fetch(:second_club_id, 2)
    @date = style.fetch(:date, DateTime.now)
  end
end
