class Club < ApplicationRecord
  has_many :teams, dependent: :destroy
  has_many :club_members, dependent: :destroy
  has_many :locations, dependent: :destroy

  validates :name, :description, :address, presence: true
end
