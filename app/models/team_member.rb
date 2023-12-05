class TeamMember < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :attendances, dependent: :destroy

  validates :team_id, uniqueness: { scope: :user_id }

  def member_name
    self.user.fullname
  end
end
