class ClubMember < ApplicationRecord
  belongs_to :club
  belongs_to :user

  validates :club_id, uniqueness: { scope: :user_id }
end
