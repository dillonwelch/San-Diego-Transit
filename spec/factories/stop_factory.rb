FactoryGirl.define do
  factory :stop do
    sequence(:name) { |n| "Stop #{n}" }
  end
end
