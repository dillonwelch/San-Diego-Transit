FactoryGirl.define do
  factory :route do
    sequence(:name) { |n| "Route {#}" }
  end
end
