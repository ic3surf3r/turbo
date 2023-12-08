class TeamMember < ApplicationRecord
  belongs_to :team, counter_cache: true
  belongs_to :user
  has_many :attendances, dependent: :destroy
  has_many :events, dependent: :destroy

  validates :team_id, uniqueness: { scope: :user_id }

  def member_name
    self.user.fullname
  end

  def make_coach
    self.is_coach = true
    self.save!
  end
end
