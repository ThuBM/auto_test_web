class Action < ApplicationRecord
  belongs_to :element
  belongs_to :group_action, required: false

  enum action_type: {
    input: 0,
    select_val: 1
  }
end
