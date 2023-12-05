class TeamMember < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :attendances, dependent: :destroy
  has_many :events, dependent: :destroy

  validates :team_id, uniqueness: { scope: :user_id }
end
