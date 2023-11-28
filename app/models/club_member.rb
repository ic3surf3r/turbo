class ClubMember < ApplicationRecord
  belongs_to :club
  belongs_to :user

  validates :club_id, uniqueness: { scope: :user_id }
  validates :role, inclusion: { in: ['Player', 'Coach', 'Manager'], message: '%<value%> is not a valid role' }
end
