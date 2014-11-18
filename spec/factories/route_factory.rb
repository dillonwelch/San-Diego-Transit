FactoryGirl.define do
  factory :route do
    sequence(:name) { |n| "Route {#}" }
    sequence(:mts_id)
  end
end
