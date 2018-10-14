class TestActionResult < ApplicationRecord
  belongs_to :scenario
  belongs_to :scenario_action
  belongs_to :test_report
end
