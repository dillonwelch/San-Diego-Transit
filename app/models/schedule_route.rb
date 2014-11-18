class ScheduleRoute < ActiveRecord::Base
  belongs_to :schedule
  belongs_to :route
end
