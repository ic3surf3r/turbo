class Club < ApplicationRecord
  has_many :teams
  has_many :club_members
end
