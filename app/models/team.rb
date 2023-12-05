class Team < ApplicationRecord
  belongs_to :club
  has_many :team_members, dependent: :destroy
  has_many :events, dependent: :destroy
  validates :sport, :name, :description, presence: true
  validates :name, uniqueness: true
end
