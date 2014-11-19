FactoryGirl.define do
  factory :route do
    sequence(:name) { |n| "Route #{n}" }
    sequence(:mts_id)
  end
end
