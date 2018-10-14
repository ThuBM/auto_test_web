FactoryGirl.define do
  factory :test_report do
    scenario{FactoryGirl.build :scenario}
    start_time DateTime.current
    end_time DateTime.current + 1.hour
  end
end
