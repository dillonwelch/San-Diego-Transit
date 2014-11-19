class Schedule < ActiveRecord::Base
  has_one :schedule_route
  has_one :route, through: :schedule_route

  has_one :schedule_stop
  has_one :stop, through: :schedule_stop

  DIRECTIONS = ['North', 'South', 'East', 'West']
  TIMES_OF_WEEK = ['Weekday', 'Saturday', 'Sunday']

  validates :direction, inclusion: DIRECTIONS

  validates :timetable_row, numericality: { only_integer: true, greater_than: 0 }
  #TODO
  validates :stop_time, presence: true

  validates :time_of_week, inclusion: TIMES_OF_WEEK
end
