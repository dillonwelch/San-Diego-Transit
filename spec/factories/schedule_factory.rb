FactoryGirl.define do
  factory :schedule do
    direction "West"
    timetable_row 1
    # stop { create(:stop) }
    stop_time "8:00 AM"
    time_of_week "Weekday"
  end
end
