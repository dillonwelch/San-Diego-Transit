class Schedule < ActiveRecord::Base
  has_one :schedule_route
  validates :schedule_route, presence: true
  has_one :route, through: :schedule_route
  validates :route, presence: true

  has_one :schedule_stop
  validates :schedule_stop, presence: true
  has_one :stop, through: :schedule_stop
  validates :stop, presence: true

  DIRECTIONS = [I18n.t('directions.north'), I18n.t('directions.south'), I18n.t('directions.east'), I18n.t('directions.west')]
  TIMES_OF_WEEK = [I18n.t('time_of_week.weekday'), I18n.t('time_of_week.saturday'), I18n.t('time_of_week.sunday')]

  validates :direction, inclusion: DIRECTIONS

  validates :timetable_row, numericality: { only_integer: true, greater_than: 0 }

  validates :stop_time, format: { with: /(([01][0-9])|(2[0-3])):[0-5][0-9]/ }

  validates :time_of_week, inclusion: TIMES_OF_WEEK
end
