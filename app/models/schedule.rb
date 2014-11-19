class Schedule < ActiveRecord::Base
  has_one :schedule_route
  has_one :route, through: :schedule_route

  has_one :schedule_stop
  has_one :stop, through: :schedule_stop

  validates :direction, inclusion: %w(North South East West)

  validates :timetable_row, numericality: { only_integer: true, greater_than: 0 }

  #TODO
  validates :stop_time, presence: true

  # validates :time_of_week, inclusion: %w(Weekday, Saturday, Sunday)
  validates :time_of_week, presence: true
end
