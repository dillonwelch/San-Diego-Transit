FactoryGirl.define do
  factory :schedule do
    route
    stop
    direction "West"
    timetable_row 1
    stop_time "8:00 AM"
    time_of_week "Weekday"
  end
end
