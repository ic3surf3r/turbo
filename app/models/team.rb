class Team < ApplicationRecord
  belongs_to :club
  has_many :team_members, dependent: :destroy
  has_many :events, dependent: :destroy
  validates :sport, :name, presence: true
  validates :name, uniqueness: true

  def valid_sport?
    sports = %w[football basketball hockey tennis]
    sports.include?(self.sport.strip.downcase)
  end

  def get_icon
    "sports/#{self.sport.strip.downcase}.svg"
  end
end
