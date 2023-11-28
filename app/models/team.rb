class Team < ApplicationRecord
  belongs_to :club
  has_many :team_members
end
