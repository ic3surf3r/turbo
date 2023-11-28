class Event < ApplicationRecord
  belongs_to :location
  belongs_to :team

  validates :start_time, :end_time, :description, :title, presence: true
end
