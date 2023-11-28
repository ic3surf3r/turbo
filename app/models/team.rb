class Team < ApplicationRecord
  belongs_to :club
  has_many :team_members
  validates :sport, :name, presence: true
  validates :name, uniqueness: true
end
