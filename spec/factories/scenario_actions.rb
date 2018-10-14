FactoryGirl.define do
  factory :scenario_action do
    scenario{FactoryGirl.build :scenario}
    action{FactoryGirl.build :action}
  end
end
