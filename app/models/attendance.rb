class Attendance < ApplicationRecord
  belongs_to :team_member
  belongs_to :event
end
