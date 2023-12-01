class Event < ApplicationRecord
  attr_accessor :duration
  belongs_to :team

  validates :start_time, :end_time, :description, :title, presence: true
end
