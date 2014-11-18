FactoryGirl.define do
  factory :schedule_route do
    schedule { create(:schedule) }
    route { create(:route) }
  end
end
