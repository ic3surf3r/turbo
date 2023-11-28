class TeamMember < ApplicationRecord
  belongs_to :team
  belongs_to :user

  validates :team_id, uniqueness: { scope: :user_id }
  validates :role, inclusion: { in: ['Player', 'Coach'], message: '%<value%> is not a valid role' }
end
