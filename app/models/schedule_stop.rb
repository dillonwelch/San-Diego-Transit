class ScheduleStop < ActiveRecord::Base
  belongs_to :schedule
  validates :schedule, presence: true
  belongs_to :stop
  validates :stop, presence: true
end
