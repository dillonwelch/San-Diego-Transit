class ScheduleRoute < ActiveRecord::Base
  belongs_to :schedule
  validates :schedule, presence: true
  belongs_to :route
  validates :route, presence: true
end
