FactoryGirl.define do
  factory :action do
    sequence(:name){|n| "Action_#{n}"}
    element{FactoryGirl.build :element}
    action_type{Action.action_types[:input]}
    action_value "1"
  end
end
