class Club < ApplicationRecord
  has_secure_token :invite_token
  has_many :teams, dependent: :destroy
  has_many :club_members, dependent: :destroy
  has_many :users, through: :club_members
  has_many :locations, dependent: :destroy

  validates :name, :description, :address, presence: true

  def member?(user)
    users.include?(user)
  end
end
