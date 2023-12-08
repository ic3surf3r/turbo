class Location < ApplicationRecord
  belongs_to :club, counter_cache: true
  has_many :events

  validates :name, :description, presence: true
  validates :name, uniqueness: true
end
