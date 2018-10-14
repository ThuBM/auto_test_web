FactoryGirl.define do
  factory :group_action do
    sequence(:name){|n| "GroupAction_#{n}"}
  end
end
