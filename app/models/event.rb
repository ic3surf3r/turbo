class Event < ApplicationRecord
  attr_accessor :duration
  belongs_to :team

  validates :start_time, :end_time, :description, :title, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
