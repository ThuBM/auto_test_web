class Scenario < ApplicationRecord
  has_many :scenario_actions
  has_many :actions, through: :scenario_actions

  accepts_nested_attributes_for :scenario_actions,
    allow_destroy: true, reject_if: :all_blank
end
