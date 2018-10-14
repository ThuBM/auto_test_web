FactoryGirl.define do
  factory :test_action_result do
    scenario{FactoryGirl.build :scenario}
    scenario_action{FactoryGirl.build :scenario_action}
    test_report{FactoryGirl.build :test_report}
    message "test_action_result"
    result 1

    after(:create){|tar| tar.update scenario: tar.scenario_action.scenario}
  end
end
