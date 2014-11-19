class Schedule < ActiveRecord::Base
  has_one :schedule_route
  validates :schedule_route, presence: true
  has_one :route, through: :schedule_route
  validates :route, presence: true

  has_one :schedule_stop
  validates :schedule_stop, presence: true
  has_one :stop, through: :schedule_stop
  validates :stop, presence: true

  DIRECTIONS = ['North', 'South', 'East', 'West']
  TIMES_OF_WEEK = ['Weekday', 'Saturday', 'Sunday']

  validates :direction, inclusion: DIRECTIONS

  validates :timetable_row, numericality: { only_integer: true, greater_than: 0 }
  #TODO
  validates :stop_time, presence: true

  validates :time_of_week, inclusion: TIMES_OF_WEEK
end
