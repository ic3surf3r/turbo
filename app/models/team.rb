class Team < ApplicationRecord
  belongs_to :club
  has_many :team_members
  has_many :events
  validates :sport, :name, presence: true
  validates :name, uniqueness: true
end
