FactoryGirl.define do
  factory :schedule do
    route
    stop
    direction Schedule::DIRECTIONS.sample
    timetable_row 1
    stop_time "8:00 AM"
    time_of_week Schedule::TIMES_OF_WEEK.sample
  end
end
