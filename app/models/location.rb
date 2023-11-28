class Location < ApplicationRecord
  belongs_to :club
  has_many :events

  validates :name, :description, presence: true
  validates :name, uniqueness: true
end
