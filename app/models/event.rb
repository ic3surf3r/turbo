class Event < ApplicationRecord
  attr_accessor :duration

  belongs_to :team
  has_many :attendances, dependent: :destroy
  geocoded_by :address
  validates :start_time, :end_time, :description, :title, presence: true
  after_validation :geocode, if: :will_save_change_to_address?

  def team_member
    TeamMember.find(self.team_member_id)
  end
end
