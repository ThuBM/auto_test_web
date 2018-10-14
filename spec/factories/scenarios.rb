FactoryGirl.define do
  factory :scenario do
    sequence(:name){|n| "Scenario_#{n}"}
  end
end
