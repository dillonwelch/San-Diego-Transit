FactoryGirl.define do
  factory :schedule_stop do
    schedule { create(:schedule) }
    stop { create(:stop) }
  end
end
