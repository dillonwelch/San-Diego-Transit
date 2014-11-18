class Schedule < ActiveRecord::Base
  has_one :schedule_route
  has_one :route, through: :schedule_route

  has_one :schedule_stop
  has_one :stop, through: :schedule_stop
end
