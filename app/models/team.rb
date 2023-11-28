class Team < ApplicationRecord
  belongs_to :club
  has_many :team_members, dependent: :destroy
  has_many :events, dependent: :destroy
  validates :sport, :name, presence: true
  validates :name, uniqueness: true
end
