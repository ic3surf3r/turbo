class Club < ApplicationRecord
  has_secure_token :invite_token
  has_one_attached :photo
  has_many :teams, dependent: :destroy
  has_many :club_members, dependent: :destroy
  has_many :users, through: :club_members
  has_many :locations, dependent: :destroy

  validates :name, :description, :address, presence: true

  def member?(user)
    users.include?(user)
  end

  def make_cal(start_date)
    events = self.teams.flat_map { |team| team.events.where("start_time BETWEEN ? AND ?", start_date, start_date.next_day(6)) }

    monday = make_hour_arr(events.select { |event| event.start_time.to_date == start_date })
    tuesday = make_hour_arr(events.select { |event| event.start_time.to_date == start_date.next_day(1) })
    wednesday = make_hour_arr(events.select { |event| event.start_time.to_date == start_date.next_day(2) })
    thursday = make_hour_arr(events.select { |event| event.start_time.to_date == start_date.next_day(3) })
    friday = make_hour_arr(events.select { |event| event.start_time.to_date == start_date.next_day(4) })
    saturday = make_hour_arr(events.select { |event| event.start_time.to_date == start_date.next_day(5) })
    sunday = make_hour_arr(events.select { |event| event.start_time.to_date == start_date.next_day(6) })

    return [monday, tuesday, wednesday, thursday, friday, saturday, sunday]
  end

  private

  def make_hour_arr(arr)
    hour_slots = [[], [], [], [], [], [], [], [], [], [], [], [], [], [], [], []]
    arr.each do |event|
      case
      when event.start_time.hour < 8
        hour_slots[0] << event
      when event.start_time.hour == 8
        hour_slots[1] << event
      when event.start_time.hour == 9
        hour_slots[2] << event
      when event.start_time.hour == 10
        hour_slots[3] << event
      when event.start_time.hour == 11
        hour_slots[4] << event
      when event.start_time.hour == 12
        hour_slots[5] << event
      when event.start_time.hour == 13
        hour_slots[6] << event
      when event.start_time.hour == 14
        hour_slots[7] << event
      when event.start_time.hour == 15
        hour_slots[8] << event
      when event.start_time.hour == 16
        hour_slots[9] << event
      when event.start_time.hour == 17
        hour_slots[10] << event
      when event.start_time.hour == 18
        hour_slots[11] << event
      when event.start_time.hour == 19
        hour_slots[12] << event
      when event.start_time.hour == 20
        hour_slots[13] << event
      when event.start_time.hour == 21
        hour_slots[14] << event
      when event.start_time.hour >= 22
        hour_slots[15] << event
      end
    end
    return hour_slots
  end
end
